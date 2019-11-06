'''

Initial solution used two for loops to walk over the list of numbers. With 
complexity O(n2) it was too slow and the submission failed (Time Limit Exceeded)

An alternative solution uses a dictionary to store the numbers and respective index in the list allowing for a solution that does one single pass of the input list

'''

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        visited = {}
        for i, x in enumerate(nums):
            if target-x in visited:
                return [visited[target-x], i]
            visited[x] = i
        
