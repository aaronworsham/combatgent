User.class_eval do
  attr_accessible :neck_inches, :chest_inches, :back_inches, :shoulder_inches, :right_sleeve_inches,
                  :left_sleeve_inches, :stomach_inches, :bicep_inches, :wrist_inches, :waist_inches,
                  :hip_inches, :belt_inches, :inseam_inches, :outseam_inches, :crotch_inches,
                  :thigh_inches, :knee_inches, :ankle_inches, :height_inches, :weight_pounds,
                  :jean_size, :shoe_size, :watch_hand
end