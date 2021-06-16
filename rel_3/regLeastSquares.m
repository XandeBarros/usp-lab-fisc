function tbl = regLeastSquares(x, y, strTitle, strxLabel, stryLabel)
    arguments
        x (1,:) {mustBeNumeric, mustBeFinite}
        y (1,:) {mustBeNumeric, mustBeFinite}
        strTitle {mustBeText}
        strxLabel {mustBeText}
        stryLabel {mustBeText}
    end

fig = figure();
    
lengthVectors = length(x);
avgY = mean(y);
avgX = mean(x);

num = 0;
dem = 0;

for i = 1:lengthVectors
    num = num + (x(i)-avgX)*y(i);
    dem = dem + (x(i)-avgX)^2;
end

a = num / dem;
b = avgY - a*avgX;

reg = a*x + b;

numDeltaY = 0;
numDeltaB = 0;
demDeltaY = lengthVectors-2;

for i = 1:lengthVectors
  numDeltaY = numDeltaY + (a*x(i)+b-y(i))^2;
  numDeltaB = numDeltaB + x(i)^2;
end

deltaY = sqrt(numDeltaY/demDeltaY);
deltaA = deltaY/sqrt(dem);
deltaB = (sqrt(numDeltaB/(lengthVectors*dem)))*deltaY;

plot(x, y, '.', 'MarkerSize', 15)
hold on
plot(x, reg, 'r-', 'LineWidth', 1.5)

title(strTitle, 'FontName', 'Times', 'FontSize', 12)
xlabel(strxLabel, 'FontName', 'Times', 'FontSize', 12)
ylabel(stryLabel, 'FontName', 'Times', 'FontSize', 12)
legend('Dados', 'Reta Ajustada - Mínimos Quadrados', 'Location', 'northwest')

grid on
hold off

tbl = table(a, deltaA, b, deltaB, deltaY)
