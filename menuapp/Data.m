//
//  Data.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/13/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "Data.h"


@implementation Data


+(instancetype)sharedInstance
{
    static Data *instance = nil;
    if(instance == nil){
        instance = [[Data alloc] init];
    }
    return instance;
}

-(id)init
{
    if (self = [super init]) {
        self.user = [[User alloc] init];
        self.restaurantId = 0;
        self.restaurants = [[NSMutableArray alloc] initWithCapacity:20];

        [self loadRestaurants];
        [self loadSomething];
    }
    return self;
}
-(void) loadRestaurants {
    [self.restaurants removeAllObjects];
    
    NSMutableArray *menu1 = [[NSMutableArray alloc] initWithCapacity:20];
    [menu1 addObject:[[Dish alloc]
                     initWithName:@"קבב"
                     description:@"מוגש בליווי צ'יפס / חמוצים"
                     price:32
                     //imageUrl:[[NSURL alloc] initWithString:@"https://mealbucket.com/images/4zDxalDDebz_PMNhnT5Q6S6Ja.jpg"]
                     imageName:@"kabab.jpg"
                     rating:4]];
    [menu1 addObject:[[Dish alloc]
                     initWithName:@"מעורב ירושלמי"
                     description:@"מוגש בליווי צ'יפס, סלט וחמוצים"
                     price:32
                     //imageUrl:[[NSURL alloc] initWithString:@"http://omershliva.files.wordpress.com/2011/06/d79ed7a2d795d7a8d791-1.jpg"]
                     imageName:@"meorav.jpg"
                     rating:5]];
    [menu1 addObject:[[Dish alloc]
                      initWithName:@"שניצל עוף"
                      description:@"מוגש בליווי צ'יפס, סלט / חמוצים"
                      price:32
                      //imageUrl:[[NSURL alloc] initWithString:@"http://www.tavshil.co.il/db/images/m2138y5u.jpg"]
                      imageName:@"snitzel.jpg"
                      rating:5]];
    [menu1 addObject:[[Dish alloc]
                      initWithName:@"קובה שטוחה + בורגול"
                      description:@"מוגש בליווי צ'יפס, טחינה, עמבה וסלט / חמוצים"
                      price:32
                      //imageUrl:[[NSURL alloc] initWithString:@"http://upload.wikimedia.org/wikipedia/commons/6/6d/Kubbeh_Matfuniyah.jpg"]
                      imageName:@"kube.jpg"
                      rating:5]];
    [menu1 addObject:[[Dish alloc]
                      initWithName:@"ביף סצ'ואן ירקות מוקפצים ובשר בקר"
                      description:@"מוגש בליווי אורז לבן ושלושה סלטים: כרוב, חמוצי הבית וסלט ירקות"
                      price:32
                      //imageUrl:[[NSURL alloc] initWithString:@"http://62.90.138.233/blogim/kzataheret/images/1860570_956.jpg"]
                      imageName:@"beef.jpg"
                      rating:5]];

    NSMutableArray *menu2 = [[NSMutableArray alloc] initWithCapacity:20];
    [menu2 addObject:[[Dish alloc]
                      initWithName:@"Healthy Israeli Salad"
                      description:@"Chopped vegetables salad, onions, pepper, carrots, tomato ..."
                      price:43
                      //imageUrl:[[NSURL alloc] initWithString:@"http://challahmaidel.files.wordpress.com/2012/06/israeli-salad.jpg"]
                      imageName:@"salad.jpg"
                      rating:5]];

    
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"הקובה של מומו"
                                                         menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res8657_2.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"סלטי הבריאות של שגיא סביח"
                                                         menu:menu2
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res5528_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"אמריקאן פיצה" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res6150_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"מעדנייה יואל" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res8408_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"פאטיו משלוחים" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res4234_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"קרנץ פיצה" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res4604_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"בורגר ראנץ" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res5621_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"כרמלה מתמ" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res13106_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"סושיה" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res13767_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"פיצה בוניטה" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res13626_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"פיצה מאנצ" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res13842_2.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"צוקה" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res13069_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"בורגרים" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res14420_2.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"ברודווי בייגל" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/RESTNONE_NEW.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"גרינסלט" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res9342_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"יעקב קבב" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res8786_1.jpg"]]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"פומודורו" menu:menu1
                                                     imageUrl:[[NSURL alloc] initWithString:@"http://cibus.co.il/images/restaurant_logo/Res14162_1.jpg"]]];
}
-(void)loadSomething {
    NSString *londonWeatherUrl = @"http://api.openweathermap.org/data/2.5/weather?q=London,uk";
    
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:londonWeatherUrl]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                // handle response
                id jsonObjects = [NSJSONSerialization JSONObjectWithData:data
                                                                 options:NSJSONReadingMutableContainers error:nil];
                
                NSLog(@"temp:%@", [[jsonObjects valueForKey:@"main"] valueForKey:@"temp"]);
                
            }] resume];
}
@end