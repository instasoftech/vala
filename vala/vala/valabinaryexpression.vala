/* valabinaryexpression.vala
 *
 * Copyright (C) 2006  Jürg Billeter
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Jürg Billeter <j@bitron.ch>
 */

using GLib;

namespace Vala {
	public class BinaryExpression : Expression {
		public readonly ref BinaryOperator operator;
		public readonly ref Expression left;
		public readonly ref Expression right;
		public readonly ref SourceReference source_reference;
		
		public static ref BinaryExpression new (BinaryOperator op, Expression left, Expression right, SourceReference source) {
			return (new BinaryExpression (operator = op, left = left, right = right, source_reference = source));
		}
		
		public override void accept (CodeVisitor visitor) {
			left.accept (visitor);
			right.accept (visitor);			

			visitor.visit_binary_expression (this);
		}
	}
	
	public enum BinaryOperator {
		PLUS,
		MINUS,
		MUL,
		DIV,
		MOD,
		SHIFT_LEFT,
		SHIFT_RIGHT,
		LESS_THAN,
		GREATER_THAN,
		LESS,
		GREATER,
		EQUALITY,
		INEQUALITY,
		BITWISE_AND,
		BITWISE_OR,
		BITWISE_XOR,
		AND,
		OR
	}
}
