/**
 * 一个能回答天气的对话脚本
 * author: Hai Liang Wang<hain@chatopera.com>
 * date:   2018-06-20
 */

// 天气

+ [今天] (天气|气候) [怎么样]
- {@__wf_guide_}

+ 今天 (*) 天气 [怎么样]
- {keep} ^getWeatherByCity(<cap1>)


+ (*) 今天天气 [怎么样]
- {keep} ^getWeatherByCity(<cap1>)

+ __wf_guide_
- {keep} 添加城市名哦，比如“今天北京天气怎么样”或者“北京天气怎么样”
- 我需要知道城市名称，比如“今天北京天气怎么样”或者“北京天气怎么样”
- 要告诉我城市名，比如“今天北京天气怎么样”或者“北京天气怎么样”


// 空气

+ [今天] 空气 [怎么样]
- {@__wf_guide_air}

+ (*) 今天空气 [怎么样]
- {keep} ^getAirByCity(<cap1>)


+ 今天 (*) 空气 [怎么样]
- {keep} ^getAirByCity(<cap1>)

+ __wf_guide_air
- {keep} 添加城市名哦，比如“今天北京空气怎么样”或者“北京空气怎么样”
- 我需要知道城市名称，比如“今天北京空气怎么样”或者“北京空气怎么样”
- 要告诉我城市名，比如“今天北京空气怎么样”或者“北京空气怎么样”


// 运动

+ [今天] 适宜运动(么|吗)
- {@__wf_guide_sport}

+ (*) 今天适宜运动(么|吗)
- {keep} ^getSportByCity(<cap1>)


+ 今天 (*) 适宜运动(么|吗)
- {keep} ^getSportByCity(<cap1>)

+ __wf_guide_sport
- {keep} 添加城市名哦，比如“今天北京适宜运动么”或者“北京今天适宜运动么”
- 我需要知道城市名称，比如“今天北京适宜运动么”或者“北京今天适宜运动么”
- 要告诉我城市名，比如“今天北京适宜运动么”或者“北京今天适宜运动么”
