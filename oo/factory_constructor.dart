class Agent {
  String salesRepName;

  static final Map<String, Agent> _cache =
    <String, Agent>{};

  factory Agent(String customer) {
    if (!_cache.containsKey(customer))
        _cache.addAll({customer:Agent._Agent('SalesMgr')});
    return _cache[customer]!;
  }

  Agent._Agent(this.salesRepName);
}

main() {
  var a1 = Agent('J. Smith');
  var a2 = Agent('I. Darwin');
  var a3 = Agent('J. Smith');
  print(a1 == a3);
}