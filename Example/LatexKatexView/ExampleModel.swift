//
//  ExampleModel.swift
//  LatexKatexView_Example
//
//  Created by Ravi Ranjan on 17/02/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
class ExampleModel {
    var type: ExampleType
    var height: CGFloat

    init(type: ExampleType, height: CGFloat) {
        self.type = type
        self.height = height
    }

    convenience init(type: ExampleType) {
        // Use a default height value if not provided
        self.init(type: type, height: 0)
    }
}
enum ExampleType {
    
    case mathJxFormula
    case mathJxWithHtmlData
    case complexFormula
    case complextFormulWithText
    case htmlWithImage
    case normalText
    case multipleData
    
    var title: String {
        switch self {
        case .mathJxFormula:
            return "Math Jx Formula "
        case .mathJxWithHtmlData:
            return "Math Jx Formula with HTML "

        case .complexFormula:
            return "Complex formla "

        case .complextFormulWithText:
            return "Complex Formla with Text "

        case .htmlWithImage:
            return "Html with Image "
            
        case .normalText:
            return "Normal Text"
            
        case .multipleData:
            return "Multiple Data"

        }
    }
    
    var request: String {
        switch self {
        case .mathJxFormula:
            "\\(F = G \\frac{m_1 m_2}{r^2}\\)  % Newton's law of gravitation"
        case .mathJxWithHtmlData:
                                   """
                                   <!DOCTYPE html>
                                    <html>
                                   <head>
                                    <title>MathJax AsciiMath Test Page</title>
                                    <script>
                                    MathJax = {
                                      loader: {load: ['input/asciimath', 'output/chtml']}
                                    }
                                    </script>
                                   <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
                                    <script type="text/javascript" id="MathJax-script" async
                                      src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/startup.js">
                                    </script>
                                    <body>
                                   
                                    <p>When `a != 0`, there are two solutions to `ax^2 + bx + c = 0` and
                                    they are</p>
                                    <p style="text-align:center">
                                      `x = (-b +- sqrt(b^2-4ac))/(2a) .`
                                    </p>
                                   
                                    </body>
                                    </html>
                                   """
        case .complexFormula:
                                    """
                                    \\[ F(k) = \\int_{-\\infty}^{\\infty} f(x) \\cdot e^{-2\\pi i k x} \\, dx \\]
                                    
                                    """
            
        case .complextFormulWithText:
                                        """
                                        When \\(a \\ne 0\\), there are two solutions to \\(ax^2 + bx + c = 0\\) and they are
                                        $$x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}.$$
                                        
                                        """
            
        case .htmlWithImage: "<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">A 11 year old boy presented to the OPD with complaints of mild dysarthria. Examination revealed the findings shown in the image. There was a <b>history of an </b>ipsilateral branchial cyst operation 5 months back, after which these complaints started. Which of the following nerves is involved in this case?</span></p></span><img title=\"12.PNG\" src=\"https://d2bps9p1kiy4ka.cloudfront.net/5b09189f7285894d9130ccd0/fd6jidbtjtl2odapjjtqpa4ui.PNG\" alt=\"\" width=\"328\" height=\"295\" /></p>"
            
        case .normalText: "This is a something which  need to be tested in perticular"

        case .multipleData:
            ""
        }
    }
}
