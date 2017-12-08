# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{
    email: 'abc@123.com',
    encrypted_password: '$2a$11$L1jAQ1GydRa9otlO86NlnOr/WWvxpsqbh4f19JhKoduNMgXNFVEee',
    confirmation_token: 'abc123',
    created_at: '2017-11-16 00:56:51.306989',
    updated_at: '2017-11-16 00:56:51.306989',
    role: 0
}])

# (id: integer, email: string, encrypted_password: string, reset_password_token: string, reset_password_sent_at: datetime, remember_created_at: datetime, sign_in_count: integer, current_sign_in_at: datetime, last_sign_in_at: datetime, current_sign_in_ip: inet, last_sign_in_ip: inet, confirmation_token: string, confirmed_at: datetime, confirmation_sent_at: datetime, unconfirmed_email: string, failed_attempts: integer, unlock_token: string, locked_at: datetime, created_at: datetime, updated_at: datetime, role: integer)
# ["confirmation_token", "BKhZGHFh8S48zfoK-DMY"], ["confirmation_sent_at", "2017-11-15 23:53:25.220237"], ["created_at", "2017-11-15 23:53:25.220091"], ["updated_at", "2017-11-15 23:53:25.220091"], ["role", 0]

# [["email", "mathieu77197@gmail.com"],
# ["encrypted_password", "$2a$11$L1jAQ1GydRa9otlO86NlnOr/WWvxpsqbh4f19JhKoduNMgXNFVEee"],
# ["confirmation_token", "syG7BW_Yfu5hawMJZwQU"],
# ["confirmation_sent_at", "2017-11-16 00:56:51.306989"],
# ["created_at", "2017-11-16 00:56:51.306702"],
# ["updated_at", "2017-11-16 00:56:51.306702"],
# ["role", 0]]
