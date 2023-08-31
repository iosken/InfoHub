//
//  DataStore.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

// with imitation of random server json naming
struct DataStoreModel {
    var infoId: String
    var title: String
    var subTitle: String
    var author: String
    var siteLink: String
    var image: String?
}

final class DataStore {
    static let shared = DataStore()
    
    private init() {}
    
    func getTenInfoForHub() -> [DataStoreModel] {
        var result: [DataStoreModel] = []
        for currentId in 1...10 {
            result.append(DataStoreModel(
                infoId: currentId.formatted(),
                title: "Абзац 1.10.32 de Finibus Bonorum et Malorum, написанный Цицероном в 45 году н.э.",
                subTitle:
"""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non leo gravida, consequat massa interdum, consectetur nunc. Phasellus porttitor luctus nisi, ut tincidunt ligula tempus eu. In eget rutrum enim. Morbi ac tortor a felis laoreet efficitur sit amet eu ex. In mattis purus diam, sed interdum augue consectetur sit amet. Donec faucibus interdum placerat. Nam rutrum justo in volutpat finibus. Praesent laoreet tristique velit vehicula bibendum. Sed erat libero, luctus vitae posuere quis, fringilla ut felis. Phasellus pulvinar venenatis sagittis. Pellentesque in sem a magna tempor lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus
    
    Fusce a molestie ante. Sed rhoncus tempus sollicitudin. Vivamus vitae facilisis ipsum. Cras eu luctus risus. Ut elementum vestibulum nisl, in hendrerit quam fringilla eu. Aliquam vitae mi sem. Cras a feugiat odio, et commodo libero. Quisque non nisl tincidunt, commodo nulla et, condimentum tellus.

    Pellentesque non leo luctus, sodales sem et, interdum lacus. Vivamus tempor maximus erat, ac iaculis lorem vulputate nec. In luctus dapibus pharetra. Vivamus vehicula sagittis elit sollicitudin pretium. Nunc et posuere justo, at tincidunt enim. In interdum magna eu fringilla pellentesque. Phasellus finibus luctus tellus non aliquam. Duis at malesuada lorem, vel sagittis nulla. Nullam dignissim a nunc ac tempor. Vestibulum id eros lorem. Duis blandit semper urna eget tristique.

    In maximus augue massa, eget blandit lacus semper a. Pellentesque sit amet enim ac augue sollicitudin faucibus vel id nisi. Phasellus vel rutrum lectus, posuere vulputate arcu. Nunc pellentesque ligula eu dui feugiat, eget feugiat lorem pharetra. Sed luctus ex quis maximus posuere. Nam auctor rhoncus velit, et commodo leo imperdiet non. Curabitur nec est volutpat, aliquam diam vitae, pellentesque nisl. Maecenas sed lorem vitae diam mollis pellentesque sit amet in eros.

    Phasellus mollis quam libero, et placerat leo sagittis a. Duis sed condimentum nulla, nec consectetur diam. Etiam nec luctus lacus. In sed neque a justo lacinia sagittis in non ex. Phasellus congue ut felis vitae vulputate. Suspendisse rutrum, libero quis pretium porttitor, augue est malesuada mi, in porttitor justo diam condimentum magna. Etiam pulvinar mattis mauris, vel elementum enim luctus quis. Etiam finibus dolor quis magna ullamcorper maximus. Donec commodo tincidunt eleifend. Vestibulum convallis risus sed nunc porttitor sollicitudin. Fusce eleifend magna id ultricies blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Integer rhoncus ligula in ipsum facilisis viverra.

    Aenean ligula augue, semper quis felis quis, suscipit pharetra nibh. Donec vulputate et mauris id congue. Sed tellus justo, facilisis sed hendrerit imperdiet, sagittis sit amet dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed ac commodo augue, accumsan ornare est. Integer consectetur elit quis sollicitudin luctus. Cras imperdiet semper pulvinar.

    Proin non venenatis est, ac posuere magna. Fusce non suscipit nunc. Nam bibendum varius dui non eleifend. Etiam tortor purus, ultricies non dolor tempus, consectetur mattis arcu. Donec lobortis eget elit at lacinia. Vivamus ornare nisi eleifend est aliquet venenatis. Nullam ac vehicula metus. Suspendisse egestas ipsum sit amet luctus tincidunt. Cras suscipit elit pellentesque tincidunt mattis. Donec sed euismod magna, a convallis orci.

    Fusce vitae ligula massa. Sed tincidunt sapien eu sem auctor hendrerit at at purus. Nam tincidunt ultricies dui id pharetra. Morbi in eros at lorem condimentum ultricies. Curabitur quam mauris, tempor at sollicitudin in, gravida quis neque. Curabitur suscipit nulla sit amet lacus finibus, sit amet pretium libero laoreet. Sed ut facilisis massa. Etiam sapien elit, laoreet nec lectus id, faucibus congue nisl. Fusce semper a arcu nec semper. Vestibulum ut dolor id ante vestibulum consequat eu eget felis. Pellentesque dapibus purus non erat accumsan, sed pretium dui tempus. In vitae malesuada ante. Nulla consectetur eget orci sed tempus.

    Ut leo elit, imperdiet eget lorem eget, porta tempus dolor. Donec ornare finibus dolor fringilla bibendum. In orci orci, feugiat vitae sollicitudin at, dapibus a lorem. Vivamus at orci vulputate, maximus dolor at, elementum massa. Aenean ipsum libero, vestibulum sit amet sapien finibus, vestibulum rhoncus augue. In congue purus eget pharetra efficitur. Nunc malesuada quis turpis ut porttitor. Curabitur cursus tellus ac posuere feugiat. Aliquam pharetra pharetra consequat. Curabitur dignissim justo et pulvinar ullamcorper. Mauris ornare pretium nisi, quis condimentum orci hendrerit a. Maecenas sed lorem quis augue volutpat posuere. Suspendisse eget porttitor justo. Donec ac tempus ipsum. Nam dictum imperdiet tempus. Donec erat nulla, posuere ac tincidunt eget, fringilla eget odio.

    Etiam interdum, ante vel faucibus rutrum, ante mi vestibulum lectus, vel ornare lectus massa non turpis. Sed bibendum risus at orci cursus pharetra. Maecenas massa est, maximus nec sem ut, pulvinar dapibus ante. Praesent volutpat congue lacus, laoreet eleifend arcu efficitur et. Duis euismod tincidunt metus, et finibus mauris blandit vitae. In in semper dui, eu eleifend tortor. Etiam fringilla tempor orci, ac lacinia libero.

    In hac habitasse platea dictumst. Quisque massa libero, tempor nec mauris sit amet, ullamcorper fringilla arcu. Nam a neque egestas neque rhoncus sodales eget commodo enim. Maecenas at augue mi. Aliquam in sapien mi. Sed aliquet urna sed ultrices mattis. Nam ultricies pretium libero, vel efficitur eros hendrerit vel. Nunc non iaculis elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

    Etiam gravida faucibus nulla ut auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus posuere turpis mauris, sit amet consectetur nulla porttitor nec. Donec suscipit lorem a placerat ullamcorper. Quisque eget risus id diam vulputate faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla commodo lacus eget tellus congue, a faucibus arcu auctor. Etiam euismod volutpat neque eget viverra. Vivamus pulvinar in arcu tristique accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque orci, dictum id finibus sed, iaculis vitae neque. Integer ultrices velit est, a semper enim tincidunt et. Aenean est erat, eleifend quis pharetra quis, elementum vel ipsum. Nullam suscipit velit finibus felis iaculis viverra.

    Maecenas id mi sit amet est eleifend blandit non sed mauris. Mauris non tincidunt odio, vitae feugiat nisi. Morbi sollicitudin arcu leo, quis ornare ligula feugiat ac. Quisque ut turpis a diam sagittis ultrices vitae eget odio. Donec suscipit ultrices orci. Curabitur felis lorem, rutrum id est nec, porta varius nibh. Sed ac fermentum nulla. Quisque pharetra consectetur justo, id euismod sem maximus ut. Praesent nec consectetur augue, non tincidunt ipsum. Praesent auctor quis turpis at mattis. Ut non risus pellentesque, consectetur orci sed, blandit dui. Curabitur porta massa nec lacinia ultricies.

    Morbi maximus laoreet odio, at aliquet leo dignissim ut. Sed et mauris ut lectus lacinia volutpat. Suspendisse id lorem ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin sagittis lobortis sapien, sit amet iaculis ante varius eu. Aenean convallis sapien a facilisis ornare. Vivamus et diam eget est tempus facilisis ut vel mi. Ut dictum consectetur aliquet. Nam auctor pulvinar aliquam. Sed sapien ex, varius sit amet porta nec, sagittis eget urna. Suspendisse lacinia est urna, nec efficitur mauris ultricies ac. Curabitur ultrices neque id odio tempor tincidunt. Morbi commodo ex sit amet erat condimentum pellentesque.

    Suspendisse potenti. Vivamus vel condimentum tellus. Phasellus interdum pulvinar tempus. Quisque sed justo porta, tincidunt odio eget, suscipit est. Aliquam orci tortor, tincidunt in ullamcorper id, iaculis id nibh. Etiam non enim elementum, placerat libero et, ornare libero. Nam felis lorem, ornare sed accumsan at, accumsan at arcu. Curabitur sollicitudin dapibus magna eu iaculis. Nulla aliquet metus nunc, aliquam gravida orci mollis sit amet. Aliquam dignissim lorem sed felis bibendum, vel faucibus nibh porta. Ut dapibus sapien vitae lectus dignissim, sit amet vulputate neque pulvinar. Etiam sagittis quis enim et luctus. Vivamus consequat velit tellus, interdum ullamcorper lectus vestibulum quis.

    Aenean rutrum, metus a vestibulum finibus, tellus ligula venenatis odio, vitae aliquam velit lectus in quam. Nam ut nisi sed libero sodales dictum. Pellentesque non facilisis mi. Maecenas tempor sed ipsum ac tincidunt. Sed venenatis urna felis, sed suscipit nulla consectetur id. Mauris tincidunt volutpat neque, a pharetra ligula rhoncus at. Curabitur vitae urna vel nisl malesuada ultricies quis eu velit. Aenean quis libero quis neque aliquet consequat ac sed eros. Nullam quis scelerisque mauris, condimentum porta libero. Integer dignissim mauris in ex venenatis, vel mollis tortor fringilla. Morbi ut leo sem.

    Vestibulum quis cursus augue, et eleifend enim. Vivamus bibendum hendrerit odio sed vehicula. Aliquam non neque id magna luctus fermentum. Sed dictum nunc a tempor dictum. Mauris ac aliquam quam, vel bibendum felis. Morbi tempus imperdiet ipsum in mollis. Vivamus dui sapien, tempor ut augue id, aliquet blandit diam. Nulla varius lorem vel nisl dapibus, ac dapibus mi pulvinar. Morbi vehicula ullamcorper orci eget consectetur. Fusce consequat felis vel leo consectetur, non dictum nulla cursus. Maecenas vulputate porttitor lectus, sed sagittis erat cursus sit amet. Quisque laoreet, dolor quis tempus fringilla, risus arcu egestas eros, et fringilla ipsum risus a quam. Donec vel libero sapien. Nam risus magna, mollis quis libero at, sodales congue magna. Suspendisse bibendum convallis mi, sed mattis elit ultrices in. Duis dignissim tristique ipsum sit amet congue.

    Curabitur nunc arcu, luctus in est et, dapibus euismod purus. Mauris at lectus eget libero mollis scelerisque eget ut ex. Etiam tristique et ex ut congue. Phasellus dapibus diam eget gravida dapibus. Vivamus nec interdum arcu. Phasellus rutrum elit ac consectetur lobortis. Vestibulum eu dolor sapien. Suspendisse id imperdiet turpis. Quisque tempor, metus sed egestas sollicitudin, sapien nisl ultrices sapien, maximus malesuada risus dolor sit amet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam iaculis viverra malesuada. Integer vitae sodales diam.

    Suspendisse ut nisl ante. Fusce sit amet volutpat nisl, in mollis turpis. Sed nec suscipit orci. Donec eu eros enim. Phasellus vel sapien ultricies, blandit neque eu, lacinia ex. Fusce fermentum finibus tortor ut suscipit. Nunc dapibus mollis sem sit amet tincidunt. Integer in arcu in diam dignissim lobortis sed vel odio. Vestibulum dictum id nisl et varius. Donec lobortis tortor lacus, non posuere orci gravida nec. Praesent vitae nisl pretium justo volutpat volutpat at vitae purus. Sed nec erat arcu. Phasellus quis purus nec nisl ornare maximus et eleifend nibh. Nunc eu lacinia dui, ac hendrerit ex.

    Nunc mollis massa at erat euismod lacinia. Sed nibh odio, dapibus quis imperdiet ut, porta in sapien. Cras in neque erat. Nullam fermentum vitae tortor at aliquet. Vestibulum ut tincidunt mi, eget vulputate quam. Nam faucibus libero nec porta aliquam. Quisque ipsum nisl, eleifend mattis urna vel, molestie porta urna. Ut sit amet laoreet ex. Morbi ut augue libero. Proin pulvinar auctor mauris. Sed risus urna, viverra sit amet massa in, rutrum lacinia lectus. Aenean a mauris libero. Fusce turpis nisi, ornare id maximus in, condimentum eu dolor.
""",
                author: "Цицерон",
                siteLink: "https://ru.lipsum.com",
                image: nil)
            )
        }
        
        return result
    }
}
