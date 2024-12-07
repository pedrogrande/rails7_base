# README

validates :eth_address, presence: true, uniqueness: true
  validates :eth_nonce, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

rails g scaffold Member eth_address:text eth_nonce:text username:text


Mission
* Challenge
* rails g EvidenceType
rails g scafold Task name description:text minimum_rank:integer location_distance:integer required_evidence:text evidence_type value_estimate:integer time_estimate:integer 
* rails g scaffold Evidence name desription user:belongs_to task:belongs_to
Condition
SuccessFactor
* Review
* Certificate


Tribe
Team
League


Contract
Reward
Badge
Activity
Competition
Leaderboard

Member
Profile
Demographic
Strength
Rank
Ability
TrustFactor
Connection
Collaboration
Project



rails g scaffold Member username:uniq trust_score:integer lifetime_points:integer token_balance:integer profile_info:text avatar:attachment user:references slug:uniq membership_status:integer

rails g scaffold Rank name:string tier:integer tier_name reputation_threshold:integer multiplier:decimal description:text insignia_image:attachment color:string slug:uniq

rails g scaffold MemberRank member:references rank:references award_date:date notes:text

rails g scaffold ValueFactor name description criteria:jsonb

rails g scaffold Task title:string description:text creator:references{foreign_key: {to_table: :members}} status:integer reward_points:integer reward_tokens:integer time_commitment:integer impact_on_community:integer minimum_skill_level:integer alignment_coefficient:integer collaboration_level:integer availability_of_skills:integer physical_activity_level:integer mental_activity_level:integer creativity_level:integer specialized_tools_required:boolean specialized_skills_required:boolean required_experience_level:integer qualifications_needed:string certifications_needed:string leadership_skills_level:integer leadership_experience_level:integer risk_of_member_harm_level:integer

rails g scaffold TaskSubmission task:references member:references evidence:text status:string self_evaluation:text points_awarded:integer tokens_awarded:integer

rails g scaffold Review task_submission:references reviewer:references{foreign_key: {to_table: :members}} comments:text rating:integer status:string bonus_points_awarded:integer

rails g model Reputation member:references total_points:integer reputation_score:integer last_calculated_at:datetime

rails g model TokenTransaction member:references amount:integer transaction_type:string reason:text

rails g scaffold Badge name:string description:text criteria:text

rails g model MemberBadge member:references badge:references awarded_at:datetime

rails g scaffold Skill name:string description:text

rails g model MemberSkill member:references skill:references level:string acquired_at:datetime

rails g model Privilege name:string description:text rank:references

rails g model Penalty member:references reason:text points_deducted:integer tokens_deducted:integer imposed_at:datetime expires_at:datetime

rails g model Notification member:references content:text read_at:datetime

rails g model Leaderboard week_start_date:date member:references points_earned:integer rank_in_week:integer

rails g scaffold Message sender:references{foreign_key: {to_table: :members}} recipient:references{foreign_key: {to_table: :members}} content:text

rails g model Role name:string

rails g model MemberRole member:references role:references assigned_at:datetime
