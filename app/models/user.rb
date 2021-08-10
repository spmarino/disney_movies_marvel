# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  provider           :string           default("email"), not null
#  uid                :string           default(""), not null
#  encrypted_password :string           default(""), not null
#  name               :string
#  nickname           :string
#  email              :string
#  tokens             :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  after_create :send_signup_email
  
  private
  
  def send_signup_email
    WelcomeMessageMailer.with(user: self).signup_email.deliver
  end

end
