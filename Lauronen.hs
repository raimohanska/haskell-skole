employees = [(2, "vesa"), (50, "vessi"), (140, "londen")] 

lauronen (_, "vesa") = "lauronen"
lauronen (n, name) | n > 2 = "new guy"
                   | otherwise = name

funnyEmployeeNames = map lauronen employees
