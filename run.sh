tmux new-session -d -s marshmello

tmux rename-window 'sawyer'
tmux send-keys 'roslaunch marshmello_bringup sawyer_moveit.launch'

tmux new-window -t marshmello -n 'rviz'
tmux send-keys 'roslaunch marshmello_bringup sawyer_rviz.launch'

tmux new-window -t marshmello -n 'kinect'
tmux send-keys 'roslaunch marshmello_bringup kinect_localization.launch'

tmux new-window -t marshmello -n 'face'
tmux send-keys 'roslaunch marshmello_bringup face_detection.launch'

tmux new-window -t marshmello -n 'planning'
tmux send-keys 'roslaunch marshmello_bringup marshmello_planning.launch'

tmux select-window -t marshmello:1
tmux -2 attach-session -t marshmello