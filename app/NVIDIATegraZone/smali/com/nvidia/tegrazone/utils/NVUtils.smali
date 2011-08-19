.class public Lcom/nvidia/tegrazone/utils/NVUtils;
.super Ljava/lang/Object;
.source "NVUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    .line 254
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->dismissPopupOnRotate()V

    .line 258
    :cond_0
    return-void
.end method

.method public static cleanIntentURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 289
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, urls:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static cleanJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .local v1, tempArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 59
    return-object v1

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static combineComments([Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;)[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .locals 4
    .parameter "oldComments"
    .parameter "newComments"

    .prologue
    const/4 v3, 0x0

    .line 97
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 98
    .local v0, combined:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-object v0
.end method

.method public static encodeParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dirty"

    .prologue
    .line 207
    move-object v0, p0

    .line 209
    .local v0, encoded:Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "%5C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "/"

    const-string v2, "%2F"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "#"

    const-string v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dirty"

    .prologue
    .line 194
    move-object v0, p0

    .line 197
    .local v0, encoded:Ljava/lang/String;
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "{"

    const-string v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "}"

    const-string v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "\""

    const-string v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public static getFilterPosition(Ljava/lang/String;)I
    .locals 3
    .parameter "filter"

    .prologue
    .line 228
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    array-length v1, v2

    .line 229
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 234
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 230
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 231
    goto :goto_1

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLocalizedFeedbackURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string v0, "http://www.nvidia.com/object/io_1297826264825.html"

    .line 401
    .local v0, url:Ljava/lang/String;
    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 182
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    .line 184
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 187
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v3, p0

    .line 189
    :goto_0
    return-object v3

    .restart local p0
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPreviewImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 63
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, ".jpg"

    const-string v1, "_gallery_preview_th.jpg"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_0
    :goto_0
    return-object p0

    .line 65
    :cond_1
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, ".jpeg"

    const-string v1, "_gallery_preview_th.jpeg"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, ".png,"

    const-string v1, "_gallery_preview.png"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getThumbnailImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 75
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, ".jpg"

    const-string v1, "_gallery_thumb_th.jpg"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 83
    :cond_0
    :goto_0
    return-object p0

    .line 77
    :cond_1
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, ".jpeg"

    const-string v1, "_gallery_thumb_th.jpeg"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, ".png,"

    const-string v1, "_gallery_thumb.png"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hasGameInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7
    .parameter "callingActivity"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 272
    .local v1, isInstalled:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 285
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 273
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 274
    .local v2, p:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 275
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 277
    goto :goto_1

    .line 272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 239
    const v4, 0x7f0a000a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 240
    .local v3, searchTxt:Landroid/widget/EditText;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 243
    :cond_0
    const v4, 0x7f0a000b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 244
    .local v2, searchClearBtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 247
    :cond_1
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    :cond_2
    return-void
.end method

.method public static isHighBandwidth(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 104
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 106
    .local v6, result:Ljava/lang/Boolean;
    :try_start_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v7, v9

    .line 140
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v7

    .line 110
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 111
    .local v5, nwInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 112
    .local v4, netType:I
    if-eqz v5, :cond_2

    .line 113
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "netType: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 120
    .local v3, netSubtype:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "netSubType: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    .line 123
    .local v2, isRoaming:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isRoaming: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 125
    if-eq v4, v10, :cond_1

    const/4 v7, 0x6

    if-ne v4, v7, :cond_3

    .line 126
    :cond_1
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 140
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #isRoaming:Z
    .end local v3           #netSubtype:I
    .end local v4           #netType:I
    .end local v5           #nwInfo:Landroid/net/NetworkInfo;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0

    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #netType:I
    .restart local v5       #nwInfo:Landroid/net/NetworkInfo;
    :cond_2
    move v7, v9

    .line 115
    goto/16 :goto_0

    .line 134
    .restart local v2       #isRoaming:Z
    .restart local v3       #netSubtype:I
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 136
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #isRoaming:Z
    .end local v3           #netSubtype:I
    .end local v4           #netType:I
    .end local v5           #nwInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 137
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 157
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    .line 175
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isOnline(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 88
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 93
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTegra(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 11
    .parameter "a"

    .prologue
    .line 295
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local p0
    move-result-object v7

    .line 299
    .local v7, isTegra:Ljava/lang/Boolean;
    const/4 p0, 0x1

    new-array v4, p0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 305
    .local v4, mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 p0, 0x1

    new-array v6, p0, [I

    .line 306
    .local v6, numConfigs:[I
    const/4 p0, 0x2

    new-array v5, p0, [I

    .line 307
    .local v5, version:[I
    const/16 p0, 0x9

    new-array v3, p0, [I

    fill-array-data v3, :array_0

    .line 314
    .local v3, configAttribs:[I
    const/4 p0, 0x5

    new-array p0, p0, [I

    fill-array-data p0, :array_1

    .line 320
    .local p0, bufAttribs:[I
    const/4 v8, 0x0

    .line 323
    .local v8, result:Z
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 324
    .local v1, mEGL:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 325
    .local v2, mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-interface {v1, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 326
    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .end local v5           #version:[I
    move-result v8

    .line 327
    const/4 v3, 0x0

    aget-object v3, v4, v3

    .line 328
    .local v3, mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v4, v0

    .line 329
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v6, 0x0

    invoke-interface {v1, v2, v3, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .end local v6           #numConfigs:[I
    move-result-object v5

    .line 330
    .local v5, mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface {v1, v2, v3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 331
    .local v6, mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface {v1, v2, v6, v6, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 332
    invoke-virtual {v5}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    .end local v3           #mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    .line 333
    .local v3, mGL:Ljavax/microedition/khronos/opengles/GL10;
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #bufAttribs:[I
    const-string v9, " "

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x1f03

    invoke-interface {v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v9, " "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 334
    .local p0, extensions:Ljava/lang/String;
    const-string v9, " GL_EXT_texture_compression_s3tc "

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .end local p0           #extensions:Ljava/lang/String;
    if-ltz p0, :cond_1

    const/4 p0, 0x1

    .line 335
    .local p0, hasS3TC:Z
    :goto_0
    const/16 v9, 0x1f00

    invoke-interface {v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3           #mGL:Ljavax/microedition/khronos/opengles/GL10;
    const-string v9, "NVIDIA"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 336
    .local v3, isNV:Z
    if-eqz p0, :cond_0

    if-nez v3, :cond_2

    .line 338
    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0           #hasS3TC:Z
    move-result-object p0

    .line 346
    .end local v7           #isTegra:Ljava/lang/Boolean;
    .local p0, isTegra:Ljava/lang/Boolean;
    :goto_1
    const/4 v3, 0x0

    .line 347
    .local v3, mGL:Ljavax/microedition/khronos/opengles/GL10;
    :try_start_1
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .end local v3           #mGL:Ljavax/microedition/khronos/opengles/GL10;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 348
    invoke-interface {v1, v2, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 349
    invoke-interface {v1, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 350
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    const/4 v1, 0x0

    move v1, v8

    .line 360
    .end local v2           #mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v5           #mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v6           #mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    .end local v8           #result:Z
    .local v1, result:Z
    :goto_2
    return-object p0

    .line 334
    .end local p0           #isTegra:Ljava/lang/Boolean;
    .local v1, mEGL:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v2       #mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v3       #mGL:Ljavax/microedition/khronos/opengles/GL10;
    .restart local v5       #mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v6       #mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    .restart local v7       #isTegra:Ljava/lang/Boolean;
    .restart local v8       #result:Z
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 342
    .local v3, isNV:Z
    .local p0, hasS3TC:Z
    :cond_2
    const/4 p0, 0x1

    :try_start_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local p0           #hasS3TC:Z
    move-result-object p0

    .end local v7           #isTegra:Ljava/lang/Boolean;
    .local p0, isTegra:Ljava/lang/Boolean;
    goto :goto_1

    .line 352
    .end local v1           #mEGL:Ljavax/microedition/khronos/egl/EGL10;
    .end local v2           #mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v3           #isNV:Z
    .end local v5           #mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v6           #mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    .end local p0           #isTegra:Ljava/lang/Boolean;
    .restart local v7       #isTegra:Ljava/lang/Boolean;
    :catch_0
    move-exception p0

    move v2, v8

    .end local v8           #result:Z
    .local v2, result:Z
    move-object v1, v7

    .line 356
    .end local v7           #isTegra:Ljava/lang/Boolean;
    .local v1, isTegra:Ljava/lang/Boolean;
    .local p0, e:Ljava/lang/Exception;
    :goto_3
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local p0           #e:Ljava/lang/Exception;
    move-result-object p0

    .end local v1           #isTegra:Ljava/lang/Boolean;
    .local p0, isTegra:Ljava/lang/Boolean;
    move v1, v2

    .end local v2           #result:Z
    .local v1, result:Z
    goto :goto_2

    .line 352
    .local v1, mEGL:Ljavax/microedition/khronos/egl/EGL10;
    .local v2, mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v5       #mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v6       #mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    .restart local v8       #result:Z
    :catch_1
    move-exception v1

    move v2, v8

    .end local v8           #result:Z
    .local v2, result:Z
    move-object v10, v1

    move-object v1, p0

    .end local p0           #isTegra:Ljava/lang/Boolean;
    .local v1, isTegra:Ljava/lang/Boolean;
    move-object p0, v10

    goto :goto_3

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 314
    :array_1
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public static orientationSetter(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 218
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public static restartAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 261
    if-eqz p0, :cond_0

    .line 262
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 266
    :cond_0
    return-void
.end method
