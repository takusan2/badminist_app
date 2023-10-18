import 'package:flutter/material.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
    required this.data,
    required this.titleColumn,
    required this.titleRow,
    required this.legend,
  });

  final List<List<Widget>> data;
  final List<Widget> titleColumn;
  final List<Widget> titleRow;
  final Widget legend;

  @override
  Widget build(BuildContext context) {
    return StickyHeadersTable(
      showVerticalScrollbar: true,
      showHorizontalScrollbar: true,
      columnsLength: titleColumn.length,
      rowsLength: titleRow.length,
      legendCell: TableCell.legend(
        legend,
        colorBg: Theme.of(context).colorScheme.primary,
      ),
      columnsTitleBuilder: (i) => TableCell.stickyColumn(
        titleColumn[i],
        colorBg: Theme.of(context).colorScheme.primary,
      ),
      rowsTitleBuilder: (i) => TableCell.stickyRow(
        titleRow[i],
        colorBg: Theme.of(context).colorScheme.onBackground,
        colorHorizontalBorder: Theme.of(context).colorScheme.background,
      ),
      contentCellBuilder: (i, j) => TableCell.content(
        data[j][i],
        colorBg: Theme.of(context).colorScheme.onBackground,
        colorHorizontalBorder: Theme.of(context).colorScheme.background,
      ),
    );
  }
}

enum CellType { content, stickyRow, stickyColumn, legend }

class TableCell extends StatelessWidget {
  TableCell.content(
    this.child, {
    super.key,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.white,
    this.colorHorizontalBorder = Colors.white,
  })  : cellWidth = cellDimensions.contentCellWidth,
        cellHeight = cellDimensions.contentCellHeight,
        _cellType = CellType.content;

  TableCell.legend(
    this.child, {
    super.key,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.white,
    this.colorHorizontalBorder = Colors.white,
  })  : cellWidth = cellDimensions.stickyLegendWidth,
        cellHeight = cellDimensions.stickyLegendHeight,
        _cellType = CellType.legend;

  TableCell.stickyRow(
    this.child, {
    super.key,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.amber,
    this.colorHorizontalBorder = Colors.white,
  })  : cellWidth = cellDimensions.stickyLegendWidth,
        cellHeight = cellDimensions.contentCellHeight,
        _cellType = CellType.stickyRow;

  TableCell.stickyColumn(
    this.child, {
    super.key,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.white,
    this.colorHorizontalBorder = Colors.white,
  })  : cellHeight = cellDimensions.stickyLegendHeight,
        cellWidth = cellDimensions.contentCellWidth,
        _cellType = CellType.stickyColumn;

  final CellDimensions cellDimensions;
  final CellType _cellType;

  final Widget child;
  final double? cellWidth;
  final double? cellHeight;

  final Color colorBg;
  final Color colorHorizontalBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cellWidth,
      height: cellHeight,
      decoration: BoxDecoration(
        color: colorBg,
        border: Border(
          top:
              (_cellType == CellType.content || _cellType == CellType.stickyRow)
                  ? BorderSide(
                      color: colorHorizontalBorder,
                      width: 2,
                    )
                  : BorderSide.none,
        ),
      ),
      child: Container(
        child: child,
      ),
    );
  }
}
