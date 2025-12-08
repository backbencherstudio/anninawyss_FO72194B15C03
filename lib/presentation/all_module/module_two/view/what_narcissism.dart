import 'package:flutter/material.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';

class WhatNarcissism extends StatefulWidget {
  const WhatNarcissism({super.key});

  @override
  State<WhatNarcissism> createState() => _WhatNarcissismState();
}

class _WhatNarcissismState extends State<WhatNarcissism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomExpandTile(
                title: "What is Narcissism?",
                content:
                "Narcissism is a personality trait involving self-centeredness and lack of empathy. It exists on a spectrum from healthy self-esteem to pathological narcissistic personality disorder (NPD). While everyone shows narcissistic traits occasionally, NPD is characterized by pervasive patterns of grandiosity, need for admiration, and lack of empathy.",
              ),
              const SizedBox(height: 12),
              CustomExpandTile(
                title: "Common Traits",
                content:
                "• Grandiosity and exaggerated sense of self-importance\n• Preoccupation with fantasies of unlimited success, power, or beauty\n• Belief that they are special and unique\n• Need for excessive admiration\n• Sense of entitlement\n• Exploitative behavior in relationships\n• Lack of empathy\n• Envy of others or belief that others are envious of them\n• Arrogant, haughty behaviors or attitudes",
              ),
              const SizedBox(height: 12),
              CustomExpandTile(
                title: "How to Handle It?",
                content:
                "1. **Set firm boundaries**: Clearly define what behavior you will and won't accept\n2. **Avoid emotional dependency**: Maintain your own support system outside the relationship\n3. **Practice self-care**: Prioritize your physical and emotional wellbeing\n4. **Use clear communication**: Be direct and factual, avoid emotional arguments\n5. **Seek professional support**: Consider therapy for yourself\n6. **Manage expectations**: Accept that you cannot change the narcissist\n7. **Document incidents**: Keep records of problematic interactions\n8. **Develop exit strategies**: Plan for how to disengage when needed",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomExpandTile extends StatefulWidget {
  final String title;
  final String content;
  final Color? tileColor;
  final Color? expandedColor;

  const CustomExpandTile({
    super.key,
    required this.title,
    required this.content,
    this.tileColor,
    this.expandedColor,
  });

  @override
  State<CustomExpandTile> createState() => _CustomExpandTileState();
}

class _CustomExpandTileState extends State<CustomExpandTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: _isExpanded
            ? (widget.expandedColor ?? const Color(0xFFF0F9FF))
            : (widget.tileColor ?? const Color(0xFFF3F4F6)),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _isExpanded ? const Color(0xFF0EA5E9) : Colors.grey.shade300,
          width: 1.5,
        ),
        boxShadow: _isExpanded
            ? [
          BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 8,
            offset: const Offset(0, 2),
          )
        ]
            : [],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // Remove default divider
          highlightColor: Colors.transparent, // Remove ripple effect
          splashColor: Colors.transparent, // Remove splash effect
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: _isExpanded ? const Color(0xFF0C4A6E) : Colors.black87,
            ),
          ),
          trailing: AnimatedRotation(
            duration: const Duration(milliseconds: 300),
            turns: _isExpanded ? 0.5 : 0,
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: _isExpanded ? const Color(0xFF0EA5E9) : Colors.grey.shade600,
              size: 28,
            ),
          ),
          childrenPadding: const EdgeInsets.all(0),
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Content
                    Text(
                      widget.content,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Optional: Add an action button
                    if (widget.title == "How to Handle It?")
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0F2FE),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFBAE6FD)),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.lightbulb_outline, color: Color(0xFF0C4A6E), size: 20),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Tip: Professional counseling can provide personalized strategies",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0C4A6E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}