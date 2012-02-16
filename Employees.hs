import GHC.Exts(sortWith)
import Data.List(sort)

employees = [(2, "vesa"), (50, "vessi"), (140, "londen")] 

sortedEmployees = sortWith fst employees
sortedEmployees2 = sort employees
