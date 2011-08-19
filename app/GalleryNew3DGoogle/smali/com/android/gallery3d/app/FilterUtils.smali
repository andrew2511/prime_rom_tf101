.class public Lcom/android/gallery3d/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppliedFilters(Lcom/android/gallery3d/data/Path;[I)V
    .locals 1
    .parameter "path"
    .parameter "result"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V

    .line 128
    return-void
.end method

.method private static getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V
    .locals 13
    .parameter "path"
    .parameter "result"
    .parameter "underCluster"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, segments:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 134
    aget-object v7, v4, v2

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    aget-object v7, v4, v2

    invoke-static {v7}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, sets:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 137
    aget-object v7, v5, v3

    invoke-static {v7}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 138
    .local v6, sub:Lcom/android/gallery3d/data/Path;
    invoke-static {v6, p1, p2}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v3           #j:I
    .end local v5           #sets:[Ljava/lang/String;
    .end local v6           #sub:Lcom/android/gallery3d/data/Path;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    aget-object v7, v4, v9

    const-string v8, "cluster"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 146
    array-length v7, v4

    if-ne v7, v12, :cond_2

    .line 147
    const/4 p2, 0x1

    .line 150
    :cond_2
    aget-object v7, v4, v10

    invoke-static {v7}, Lcom/android/gallery3d/app/FilterUtils;->toClusterType(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, ctype:I
    aget v7, p1, v9

    or-int/2addr v7, v0

    aput v7, p1, v9

    .line 152
    aput v0, p1, v12

    .line 153
    if-eqz p2, :cond_3

    .line 154
    aget v7, p1, v10

    or-int/2addr v7, v0

    aput v7, p1, v10

    .line 158
    .end local v0           #ctype:I
    :cond_3
    aget-object v7, v4, v9

    const-string v8, "filter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v4, v11

    const-string v8, "mediatype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    aget-object v7, v4, v10

    invoke-static {v7}, Lcom/android/gallery3d/app/FilterUtils;->toFilterType(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, ftype:I
    aget v7, p1, v11

    or-int/2addr v7, v1

    aput v7, p1, v11

    .line 161
    const/4 v7, 0x5

    aput v1, p1, v7

    .line 162
    if-eqz p2, :cond_4

    .line 163
    const/4 v7, 0x3

    aget v8, p1, v7

    or-int/2addr v8, v1

    aput v8, p1, v7

    .line 166
    .end local v1           #ftype:I
    :cond_4
    return-void
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 246
    sparse-switch p1, :sswitch_data_0

    move-object v1, p0

    .line 263
    :goto_0
    return-object v1

    .line 248
    :sswitch_0
    const-string v0, "time"

    .line 263
    .local v0, kind:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cluster/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 251
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_1
    const-string v0, "location"

    .line 252
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 254
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_2
    const-string v0, "tag"

    .line 255
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 257
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_3
    const-string v0, "size"

    .line 258
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "filterType"

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    move-object v1, p0

    .line 240
    :goto_0
    return-object v1

    .line 231
    :pswitch_0
    const/4 v0, 0x2

    .line 240
    .local v0, mediaType:I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 234
    .end local v0           #mediaType:I
    :pswitch_1
    const/4 v0, 0x4

    .line 235
    .restart local v0       #mediaType:I
    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base"

    .prologue
    .line 278
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 279
    .local v0, done:[Z
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 9
    .parameter "base"
    .parameter "done"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 283
    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 308
    :goto_0
    return-object v5

    .line 285
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, segments:[Ljava/lang/String;
    aget-object v5, v3, v7

    const-string v6, "cluster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    aput-boolean v8, p1, v7

    .line 288
    aget-object v5, v3, v8

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    goto :goto_0

    .line 291
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 293
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    aget-object v5, v3, v0

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, sets:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 298
    if-lez v1, :cond_2

    .line 299
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_2
    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 303
    :cond_3
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .end local v1           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 308
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base"

    .prologue
    .line 313
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 314
    .local v0, done:[Z
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 9
    .parameter "base"
    .parameter "done"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 318
    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 343
    :goto_0
    return-object v5

    .line 320
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, segments:[Ljava/lang/String;
    aget-object v5, v3, v7

    const-string v6, "filter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v8

    const-string v6, "mediatype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    aput-boolean v8, p1, v7

    .line 323
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    goto :goto_0

    .line 326
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 328
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    aget-object v5, v3, v0

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, sets:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 333
    if-lez v1, :cond_2

    .line 334
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lcom/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    :cond_3
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v1           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 343
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static setMenuItemApplied(Landroid/view/Menu;IZZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "applied"
    .parameter "updateTitle"

    .prologue
    .line 194
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Landroid/view/Menu;IZZZ)V

    .line 195
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setMenuItemAppliedEnabled(Landroid/view/Menu;IZZZ)V
    .locals 3
    .parameter "menu"
    .parameter "id"
    .parameter "applied"
    .parameter "enabled"
    .parameter "updateTitle"

    .prologue
    .line 199
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 200
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 201
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 202
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 203
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 204
    if-eqz p4, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, title:Landroid/view/MenuItem;
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 224
    .end local v1           #title:Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 212
    .restart local v1       #title:Landroid/view/MenuItem;
    :pswitch_1
    const v2, 0x7f070011

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 213
    goto :goto_0

    .line 217
    :pswitch_2
    const v2, 0x7f070017

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 218
    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f070012
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 119
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 120
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :cond_0
    return-void
.end method

.method public static setupMenuItems(Landroid/view/Menu;Lcom/android/gallery3d/data/Path;Z)V
    .locals 12
    .parameter "menu"
    .parameter "path"
    .parameter "inAlbum"

    .prologue
    const v9, 0x7f070012

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 82
    const/4 v6, 0x6

    new-array v5, v6, [I

    .line 83
    .local v5, result:[I
    invoke-static {p1, v5}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[I)V

    .line 84
    aget v1, v5, v10

    .line 85
    .local v1, ctype:I
    aget v3, v5, v11

    .line 86
    .local v3, ftype:I
    const/4 v6, 0x3

    aget v4, v5, v6

    .line 87
    .local v4, ftypef:I
    const/4 v6, 0x4

    aget v0, v5, v6

    .line 88
    .local v0, ccurrent:I
    const/4 v6, 0x5

    aget v2, v5, v6

    .line 91
    .local v2, fcurrent:I
    const v6, 0x7f070013

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_1

    move v7, v11

    :goto_0
    and-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_2

    move v8, v11

    :goto_1
    invoke-static {p0, v6, v7, v8}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Landroid/view/Menu;IZZ)V

    .line 93
    const v6, 0x7f070014

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_3

    move v7, v11

    :goto_2
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_4

    move v8, v11

    :goto_3
    invoke-static {p0, v6, v7, v8}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Landroid/view/Menu;IZZ)V

    .line 95
    const v6, 0x7f070015

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_5

    move v7, v11

    :goto_4
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_6

    move v8, v11

    :goto_5
    invoke-static {p0, v6, v7, v8}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Landroid/view/Menu;IZZ)V

    .line 97
    const v6, 0x7f070016

    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_7

    move v7, v11

    :goto_6
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_8

    move v8, v11

    :goto_7
    invoke-static {p0, v6, v7, v8}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Landroid/view/Menu;IZZ)V

    .line 100
    if-eqz p2, :cond_0

    if-nez v1, :cond_9

    :cond_0
    move v6, v11

    :goto_8
    invoke-static {p0, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 101
    if-nez v1, :cond_a

    move v6, v11

    :goto_9
    if-nez v0, :cond_b

    move v7, v11

    :goto_a
    invoke-static {p0, v9, v6, v7}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Landroid/view/Menu;IZZ)V

    .line 106
    const v6, 0x7f070019

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_c

    move v7, v11

    :goto_b
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_d

    if-nez v4, :cond_d

    move v8, v11

    :goto_c
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_e

    move v9, v11

    :goto_d
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Landroid/view/Menu;IZZZ)V

    .line 110
    const v6, 0x7f07001a

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_f

    move v7, v11

    :goto_e
    and-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_10

    if-nez v4, :cond_10

    move v8, v11

    :goto_f
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_11

    move v9, v11

    :goto_10
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Landroid/view/Menu;IZZZ)V

    .line 114
    const v6, 0x7f070018

    if-nez v3, :cond_12

    move v7, v11

    :goto_11
    if-eqz v3, :cond_13

    if-nez v4, :cond_13

    move v8, v11

    :goto_12
    if-nez v2, :cond_14

    move v9, v11

    :goto_13
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Landroid/view/Menu;IZZZ)V

    .line 116
    return-void

    :cond_1
    move v7, v10

    .line 91
    goto/16 :goto_0

    :cond_2
    move v8, v10

    goto/16 :goto_1

    :cond_3
    move v7, v10

    .line 93
    goto :goto_2

    :cond_4
    move v8, v10

    goto :goto_3

    :cond_5
    move v7, v10

    .line 95
    goto :goto_4

    :cond_6
    move v8, v10

    goto :goto_5

    :cond_7
    move v7, v10

    .line 97
    goto :goto_6

    :cond_8
    move v8, v10

    goto :goto_7

    :cond_9
    move v6, v10

    .line 100
    goto :goto_8

    :cond_a
    move v6, v10

    .line 101
    goto :goto_9

    :cond_b
    move v7, v10

    goto :goto_a

    :cond_c
    move v7, v10

    .line 106
    goto :goto_b

    :cond_d
    move v8, v10

    goto :goto_c

    :cond_e
    move v9, v10

    goto :goto_d

    :cond_f
    move v7, v10

    .line 110
    goto :goto_e

    :cond_10
    move v8, v10

    goto :goto_f

    :cond_11
    move v9, v10

    goto :goto_10

    :cond_12
    move v7, v10

    .line 114
    goto :goto_11

    :cond_13
    move v8, v10

    goto :goto_12

    :cond_14
    move v9, v10

    goto :goto_13
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 273
    invoke-static {p0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "base"
    .parameter "filterType"

    .prologue
    .line 268
    invoke-static {p0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toClusterType(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 169
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x2

    .line 178
    :goto_0
    return v0

    .line 171
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x4

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const/16 v0, 0x8

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const/16 v0, 0x10

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toFilterType(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, v:I
    packed-switch v0, :pswitch_data_0

    .line 189
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 185
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
