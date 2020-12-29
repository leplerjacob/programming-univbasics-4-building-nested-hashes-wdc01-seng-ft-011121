def base_hash
  monopoly = {:railroads => {}}
end

def monopoly_with_second_tier
  monopoly = base_hash
  monopoly[:railroads] = {:pieces => 4, :rent_in_dollars => {}, :names => {}}
  monopoly
end

def monopoly_with_third_tier
  monopoly = monopoly_with_second_tier
  monopoly[:railroads][:rent_in_dollars] = {:one_piece_owned => 25,:two_pieces_owned => 50,:threee_pieces_owned => 100,:four_pieces_owned => 200}
  monopoly[:railroads][:names] = {:reading_railroad => {},:pennsylvania_railroad => {},:b_and_o_railroad => {},:shortline_railroad => {}}
  monopoly
end

def monopoly_with_fourth_tier
  monopoly = monopoly_with_third_tier
  monopoly[:railroads][:names][:reading_railroad] = {:mortgage_value => 100}
  monopoly[:railroads][:names][:pennsylvania_railroad] = {:mortgage_value => 200}
  monopoly[:railroads][:names][:b_and_o_railroad] = {:mortgage_value => 400}
  monopoly[:railroads][:names][:shortlin_railroad] = {:mortgage_value => 800}
  monopoly
end
