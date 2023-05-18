#!/usr/bin/env lua

local a = {} -- creates a table
local k = 'x'
a[k] = 10 -- adds new entry with key='x' & value=10
a[20] = 'great'
print(a['x']) --> 10
local k = 20
print(a[k]) --> great
a['x'] = a['x'] + 1
print(a['x']) --> 11

local c = {}
c['x'] = 10
local d = c
print(d['x']) --> 10
d['x'] = 20
print(a['x']) --> 20
c = nil
print(d['x']) --> 20 -- because tables don't have fixed relationships
d = nil -- tables gets automatic deleted

local f = {}
for i=1,1000 do f[i] = i*2 end -- creates 1000 entries
print(f[9]) --> 18
f['x'] = 10
print(f['x']) --> 10
print(f['y']) --> nil

local h = {} -- f.x !=/~= f[x]
local x = 'y'
h[x] = 10
print(h[x]) --> 10
print(h.x) --> nil ('undefined')
print(h.y) --> 10

local j = {}
for i=1,10 do
	j[i] = io.read() -- reads and store 10 lines
end

for i,line in ipairs(j) do
	print(line)
end

local s = 10 ; local l = '10' ; local p = '10+'
local r = {}
r[s] = 'one value'
r[l] = 'another value'
r[p] = 'yet another value'
print(r[l])
print(r[p])
print(r[tonumber(l)])
print(r[tonumber(p)])
