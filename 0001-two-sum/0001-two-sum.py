class Solution(object):
    def twoSum(self, nums, target):
        słownik = {}

        for i in range(len(nums)):
            liczba = target - nums[i]
            if liczba in słownik:
                return [słownik[liczba], i] 
            else:
                słownik[nums[i]] = i 

        return [] 
