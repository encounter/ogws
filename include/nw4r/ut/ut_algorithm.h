#ifndef NW4R_UT_ALGORITHM_H
#define NW4R_UT_ALGORITHM_H

namespace nw4r
{
	namespace ut
	{
		namespace
		{
			template <typename T>
			inline T Clamp(T min, T max, T value)
			{
				if (max < value) return max;
				return (value < min) ? min : value;
			}
			
			template <typename T>
			inline T Max(T t1, T t2)
			{
				return (t1 < t2) ? t2 : t1;
			}
		}
	}
}

#endif