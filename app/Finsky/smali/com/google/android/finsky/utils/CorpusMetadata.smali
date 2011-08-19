.class public final Lcom/google/android/finsky/utils/CorpusMetadata;
.super Ljava/lang/Object;
.source "CorpusMetadata.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackendHintColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 38
    :pswitch_0
    const v0, 0x7f07000d

    .line 41
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 29
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f07000d

    .line 30
    .restart local v0       #id:I
    goto :goto_0

    .line 32
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f07000e

    .line 33
    .restart local v0       #id:I
    goto :goto_0

    .line 35
    .end local v0           #id:I
    :pswitch_3
    const v0, 0x7f07000f

    .line 36
    .restart local v0       #id:I
    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getBucketEntryBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 79
    :pswitch_0
    const v0, 0x7f020058

    .line 82
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 73
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f020059

    .line 74
    .restart local v0       #id:I
    goto :goto_0

    .line 76
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f02005a

    .line 77
    .restart local v0       #id:I
    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCategoryBackground(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 183
    :pswitch_0
    const v0, 0x7f020006

    :goto_0
    return v0

    .line 178
    :pswitch_1
    const v0, 0x7f020007

    goto :goto_0

    .line 180
    :pswitch_2
    const v0, 0x7f020008

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getContactUsUrl(I)Landroid/net/Uri;
    .locals 1
    .parameter "channelId"

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 117
    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/config/G;->tabletDefaultContactUsUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 113
    .restart local p0
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/config/G;->tabletBooksContactUsUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 115
    .restart local p0
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/config/G;->tabletMoviesContactUsUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDescriptionHeaderStringId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 245
    packed-switch p0, :pswitch_data_0

    .line 249
    const v0, 0x7f0b0057

    :goto_0
    return v0

    .line 247
    :pswitch_0
    const v0, 0x7f0b0056

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static getDetailsHeaderBackgroundResource(I)I
    .locals 1
    .parameter "backend"

    .prologue
    const v0, 0x7f020003

    .line 228
    packed-switch p0, :pswitch_data_0

    .line 236
    :goto_0
    :pswitch_0
    return v0

    .line 232
    :pswitch_1
    const v0, 0x7f020001

    goto :goto_0

    .line 234
    :pswitch_2
    const v0, 0x7f020004

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlyoverBackgroundResource(I)I
    .locals 1
    .parameter "backend"

    .prologue
    const v0, 0x7f020067

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return v0

    .line 198
    :pswitch_1
    const v0, 0x7f020068

    goto :goto_0

    .line 200
    :pswitch_2
    const v0, 0x7f020069

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getHelpUrl(I)Landroid/net/Uri;
    .locals 1
    .parameter "channelId"

    .prologue
    .line 92
    packed-switch p0, :pswitch_data_0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/config/G;->defaultHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    .restart local p0
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/config/G;->appsHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 96
    .restart local p0
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/config/G;->booksHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 98
    .restart local p0
    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/config/G;->moviesHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getIconResource(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 159
    packed-switch p0, :pswitch_data_0

    .line 167
    :pswitch_0
    const v0, 0x7f02003d

    :goto_0
    return v0

    .line 161
    :pswitch_1
    const v0, 0x7f020021

    goto :goto_0

    .line 163
    :pswitch_2
    const v0, 0x7f020023

    goto :goto_0

    .line 165
    :pswitch_3
    const v0, 0x7f02002f

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getIconWidth(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 278
    :pswitch_0
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    .line 274
    :pswitch_1
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 276
    :pswitch_2
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMoreArrowResource(I)I
    .locals 1
    .parameter "backend"

    .prologue
    const v0, 0x7f020044

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return v0

    .line 215
    :pswitch_1
    const v0, 0x7f020045

    goto :goto_0

    .line 217
    :pswitch_2
    const v0, 0x7f020046

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getOwnedIconResource(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_0

    .line 134
    :pswitch_0
    const v0, 0x7f020031

    :goto_0
    return v0

    .line 130
    :pswitch_1
    const v0, 0x7f020032

    goto :goto_0

    .line 132
    :pswitch_2
    const v0, 0x7f020033

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getOwnedNotLocalIconResource(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 149
    const v0, 0x7f020034

    :goto_0
    return v0

    .line 147
    :pswitch_0
    const v0, 0x7f020035

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPromoHolographicStrip(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 303
    packed-switch p0, :pswitch_data_0

    .line 309
    :pswitch_0
    const v0, 0x7f020064

    :goto_0
    return v0

    .line 305
    :pswitch_1
    const v0, 0x7f020065

    goto :goto_0

    .line 307
    :pswitch_2
    const v0, 0x7f020066

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getPromoShadowResource(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 58
    :pswitch_0
    const v0, 0x7f02005b

    .line 61
    .local v0, id:I
    :goto_0
    return v0

    .line 52
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f02005c

    .line 53
    .restart local v0       #id:I
    goto :goto_0

    .line 55
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f02005d

    .line 56
    .restart local v0       #id:I
    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getRelatedIconWidth(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 294
    :pswitch_0
    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    .line 290
    :pswitch_1
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 292
    :pswitch_2
    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getReviewsHeaderStringId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 258
    packed-switch p0, :pswitch_data_0

    .line 262
    const v0, 0x7f0b005c

    :goto_0
    return v0

    .line 260
    :pswitch_0
    const v0, 0x7f0b005d

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
