void main () {
    int? score;
print(score ?? 'No score');
score = 22;
print(score ?? 'No score');
}