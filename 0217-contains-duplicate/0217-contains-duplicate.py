class Solution(object):
    def containsDuplicate(self, nums):
        zbior = set(nums)
        return len(zbior) != len(nums)
        
        