/* valalockable.vala
 *
 * Copyright (C) 2006  Raffaele Sandrini
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
 * 	Raffaele Sandrini <rasa@gmx.ch>
 */

/**
 * Represents a lockable object.
 */
public interface Vala.Lockable {
	/**
	 * Indicates a specific lockable object beeing actually locked somewhere.
	 */
	public abstract bool get_lock_used ();
	
	/**
	 * Set this lockable object as beeing locked somewhere.
	 */
	public abstract void set_lock_used (bool used);
}
