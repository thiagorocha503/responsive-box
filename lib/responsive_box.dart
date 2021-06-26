library responsive_box;

import 'package:flutter/material.dart';

class ResponsiveBox extends StatefulWidget {
  /// The [child] contained by the container.
  ///
  /// If null, and if the [constraints] are unbounded or also null, the container will expand to fill all available space in its parent, unless the parent provides unbounded constraints, in which case the container will attempt to be as small as possible.
  ///
  /// This widget can only have one child. To lay out multiple children, let this widget's child be a widget such as [Row], [Column], or [Stack], which have a children property, and then provide the children to that widget.
  final Widget? child;

  ///Empty space to inscribe inside the [decoration]. The [child], if any, is placed inside this padding.
  final EdgeInsetsGeometry? padding;

  /// The decoration to paint behind the [child].
  ///
  ///Use the [color] property to specify a simple solid color.
  ///
  /// The [child] is not clipped to the decoration. To clip a child to the shape of a particular [ShapeDecoration], consider using a [ClipPath] widget.
  final Decoration? decoration;

  ///   The color to paint behind the [child].
  ///
  /// This property should be preferred when the background is a simple color. For other cases, such as gradients or images, use the [decoration] property.
  ///
  /// If the [decoration] is used, this property must be null. A background color may still be painted by the [decoration] even if this property is null.
  final Color? color;

  final CrossAxisAlignment? crossAxisAlignment;

  const ResponsiveBox(
      {Key? key,
      this.child,
      this.padding,
      this.decoration,
      this.color,
      this.crossAxisAlignment})
      : super(key: key);

  @override
  _ResponsiveBoxState createState() => _ResponsiveBoxState();
}

class _ResponsiveBoxState extends State<ResponsiveBox> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: widget.key,
      builder: (BuildContext context, BoxConstraints constraints) {
        double? width;
        if (constraints.maxWidth < 576) {
          width = constraints.maxWidth;
        } // Small

        else if (constraints.maxWidth >= 576 && constraints.maxWidth < 768) {
          width = 540;
        }
        // Medium
        else if (constraints.maxWidth >= 768 && constraints.maxWidth < 992) {
          width = 720;
        }
        // Large
        else if (constraints.maxWidth >= 992 && constraints.maxWidth < 1200) {
          width = 960;
        }
        // X-large
        else if (constraints.maxWidth >= 1200 && constraints.maxWidth < 1400) {
          width = 1140;
        }
        // xx-large
        else {
          width = 1320;
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              widget.crossAxisAlignment ?? CrossAxisAlignment.start,
          children: [
            Container(
              color: widget.color,
              padding: widget.padding,
              height: double.infinity,
              width: width,
              decoration: widget.decoration,
              child: widget.child,
            )
          ],
        );
      },
    );
  }
}
