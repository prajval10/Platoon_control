function dist = curv_dist(vec_s)
    % vec_s is of this form --> s_leader,s_follower
    s_leader = vec_s(1);
    s_follower = vec_s(2);
    dist = s_leader - s_follower;
end