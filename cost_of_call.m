function total_cost = cost_of_call(pehr, duration)
 	if (duration > 0) && (duration <= 10)
 		if (pehr == 'day')
 			total_cost = 0.10 * duration;
 		elseif (pehr == 'evening')
 			total_cost = 0.07 * duration;
 		else
 			total_cost = 0.04 * duration;
		end
 	elseif (duration > 10) && (duration <= 30)
 		if (pehr == 'day')
 			total_cost = (0.08 * duration) + 1;
 		elseif (pehr == 'evening')
 			total_cost = (0.05 * duration) + 0.70;
 		else
 			total_cost = (0.03 * duration) + 0.40;
		end
 	elseif (duration > 30)
 		if (pehr == 'day')
 			total_cost = (0.06 * duration) + 2.60;
 		elseif (pehr == 'evening')
 			total_cost = (0.04 * duration) + 1.70;
 		else
 			total_cost = (0.02 * duration) + 1;
		end
end