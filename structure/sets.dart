main() {

   Set set = { 2, 4, 6, 8, 4 };
   print(set);
   set = set.union({ 1, 3, 5, 7 });
   print(set);
   print({1,2,3}.intersection({2,4,6}));
}
