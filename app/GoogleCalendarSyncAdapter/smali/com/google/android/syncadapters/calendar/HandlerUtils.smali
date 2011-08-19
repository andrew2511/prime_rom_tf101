.class public Lcom/google/android/syncadapters/calendar/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field static final DEFAULT_CALENDAR_INT_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "#2952A3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/syncadapters/calendar/HandlerUtils;->DEFAULT_CALENDAR_INT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static getCalendarEntryAccessLevelFromEntityAccessLevel(I)B
    .locals 1
    .parameter "entityAccessLevel"

    .prologue
    .line 66
    sparse-switch p0, :sswitch_data_0

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, accessLevel:B
    :goto_0
    return v0

    .line 68
    .end local v0           #accessLevel:B
    :sswitch_0
    const/4 v0, 0x0

    .line 69
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 71
    .end local v0           #accessLevel:B
    :sswitch_1
    const/4 v0, 0x1

    .line 72
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 74
    .end local v0           #accessLevel:B
    :sswitch_2
    const/4 v0, 0x2

    .line 75
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 77
    .end local v0           #accessLevel:B
    :sswitch_3
    const/4 v0, 0x3

    .line 78
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 80
    .end local v0           #accessLevel:B
    :sswitch_4
    const/4 v0, 0x4

    .line 81
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 83
    .end local v0           #accessLevel:B
    :sswitch_5
    const/4 v0, 0x5

    .line 84
    .restart local v0       #accessLevel:B
    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_5
    .end sparse-switch
.end method

.method static getCalendarHexColorFromInt(I)Ljava/lang/String;
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x2

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 134
    .local v1, rgbString:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->validateCalendarHexColor(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const-string v2, "#2952A3"

    .line 137
    :goto_1
    return-object v2

    .end local v1           #rgbString:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 133
    goto :goto_0

    .line 137
    .restart local v1       #rgbString:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TA;TB;>;)",
            "Ljava/util/HashMap",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, originalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TA;TB;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TB;TA;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 50
    .local v3, originalValue:Ljava/lang/Object;,"TB;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    .end local v3           #originalValue:Ljava/lang/Object;,"TB;"
    :cond_1
    return-object v2
.end method

.method static validateCalendarHexColor(Ljava/lang/String;)Z
    .locals 4
    .parameter "hexString"

    .prologue
    const/4 v3, 0x0

    .line 103
    if-nez p0, :cond_0

    move v1, v3

    .line 110
    :goto_0
    return v1

    .line 107
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, v3

    .line 110
    goto :goto_0
.end method

.method static validateCalendarIntColor(I)Z
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x2

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 123
    .local v1, rgbString:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->validateCalendarHexColor(Ljava/lang/String;)Z

    move-result v2

    return v2

    .end local v1           #rgbString:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 122
    goto :goto_0
.end method
