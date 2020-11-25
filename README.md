# Code Questions

Primary purpose of this repository is to learn and improve on Haskell coding

## Tweets

Given a file of "tweets" parse each hastag and return the number of instances of each hashtag.
Assumption: Hashtags will not have any special characters

## TwoSum

Given an array of integers nums and an integer target, return pairs of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

## Parking

Design a parking system for a parking lot. The parking lot has three kinds of parking spaces: big, medium, and small, with a fixed number of slots for each size.
*Note* This was built using StateT is it not the most effecient way but I wanted to learn

## Group People

There are n people that are split into some unknown number of groups. Each person is labeled with a unique ID from 0 to n - 1.
You are given an integer array groupSizes, where groupSizes[i] is the size of the group that person i is in. For example, if groupSizes[1] = 3, then person 1 must be in a group of size 3.
Return a list of groups such that each person i is in a group of size groupSizes[i].
Each person should appear in exactly one group, and every person must be in a group. If there are multiple answers, return any of them. It is guaranteed that there will be at least one valid solution for the given input.

## Single Function Questions (Helpers.hs)

### Sort String by Array
Sort a string using a second array as the sort order

### Reduce number to zero
Given a non-negative integer num, return the number of steps to reduce it to zero. If the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
