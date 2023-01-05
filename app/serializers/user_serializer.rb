class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :pronouns, :email, :job_title, :employer, :open_to_work?, :profile_picture, :follower_count, :following_count
  
  has_many :professional_links


  def follower_count
    self.object.followers.length
  end

  def following_count
    self.object.following.length
  end


  
end
