.class public Lcom/asus/cm/util/WifiConfigHelper;
.super Ljava/lang/Object;
.source "WifiConfigHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiConfigHelper"

.field private static final WIFI_CFG_PATH:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNetwork(Ljava/util/HashMap;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, network:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 103
    const/4 v4, 0x0

    .line 117
    :goto_0
    return v4

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, item:Ljava/lang/String;
    const-string v5, "WifiConfigHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNetwork(), item="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/asus/cm/util/WifiConfigHelper;->loadConfig()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 111
    .local v0, config:Ljava/lang/StringBuffer;
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "network={\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, key:Ljava/lang/String;
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 116
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "}\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-static {v0}, Lcom/asus/cm/util/WifiConfigHelper;->saveConfig(Ljava/lang/StringBuffer;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public static getNetwork(I)Ljava/util/LinkedHashMap;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "WifiConfigHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetwork(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-gez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 54
    .end local p0
    :goto_0
    return-object p0

    .line 29
    .restart local p0
    :cond_0
    const/4 v0, -0x1

    .line 30
    .local v0, matchCount:I
    invoke-static {}, Lcom/asus/cm/util/WifiConfigHelper;->loadConfig()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 31
    .local v2, wifiConfig:Ljava/lang/StringBuffer;
    const-string v1, "(?<=network=\\{\\r\\n)(?:.*?)(?=\\}\\r\\n)"

    .line 33
    .local v1, patternStr:Ljava/lang/String;
    const/16 v3, 0x2a

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 35
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 36
    .end local v2           #wifiConfig:Ljava/lang/StringBuffer;
    .local v1, matcher:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p0, :cond_1

    .line 38
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .local v3, network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .end local p0
    move-result-object p0

    const-string v0, "\r\n"

    .end local v0           #matchCount:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 41
    .local p0, items:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v2, p0

    .local v2, len$:I
    const/4 v0, 0x0

    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .local v0, i$:I
    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v1, p0, v0

    .line 44
    .local v1, item:Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .end local v1           #item:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0           #i$:I
    .end local v2           #len$:I
    .end local p0           #arr$:[Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 48
    .local p0, ex:Ljava/lang/NullPointerException;
    const/4 p0, 0x0

    goto :goto_0

    .restart local v0       #i$:I
    .restart local v2       #len$:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_2
    move-object p0, v3

    .line 50
    goto :goto_0

    .line 54
    .end local v2           #len$:I
    .end local v3           #network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, matchCount:I
    .local v1, matcher:Ljava/util/regex/Matcher;
    .local p0, id:I
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getNetworkCount()I
    .locals 8

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, matchCount:I
    invoke-static {}, Lcom/asus/cm/util/WifiConfigHelper;->loadConfig()Ljava/lang/StringBuffer;

    move-result-object v4

    .line 123
    .local v4, wifiConfig:Ljava/lang/StringBuffer;
    const-string v3, "(?<=network=\\{\\r\\n)(?:.*?)(?=\\}\\r\\n)"

    .line 125
    .local v3, patternStr:Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 127
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 128
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-string v5, "WifiConfigHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkCount(), count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v0
.end method

.method public static getSSID(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string v1, "WifiConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID(), id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-gez p0, :cond_0

    move-object v1, v4

    .line 150
    .end local p0
    :goto_0
    return-object v1

    .line 145
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/asus/cm/util/WifiConfigHelper;->getNetwork(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 147
    .local v0, network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    move-object v1, v4

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getSecurity(I)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 174
    const-string v5, "WifiConfigHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSecurity(), id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-gez p0, :cond_0

    move-object v5, v8

    .line 210
    :goto_0
    return-object v5

    .line 179
    :cond_0
    const/4 v4, 0x0

    .line 180
    .local v4, security:Ljava/lang/String;
    invoke-static {p0}, Lcom/asus/cm/util/WifiConfigHelper;->getNetwork(I)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 182
    .local v2, network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    move-object v5, v8

    .line 183
    goto :goto_0

    .line 185
    :cond_1
    const-string v5, "key_mgmt"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, key_mgmt:Ljava/lang/String;
    const-string v5, "proto"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, proto:Ljava/lang/String;
    const-string v5, "group"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, group:Ljava/lang/String;
    const-string v5, "NONE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 190
    if-eqz v0, :cond_3

    .line 191
    const-string v5, "CCMP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "WEP40"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "WEP104"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    :cond_2
    const-string v4, "WEP"

    :cond_3
    :goto_1
    move-object v5, v4

    .line 210
    goto :goto_0

    .line 195
    :cond_4
    const-string v4, "OPEN"

    goto :goto_1

    .line 198
    :cond_5
    const-string v5, "WPA_EAP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    const-string v4, "WPA_EAP"

    goto :goto_1

    .line 200
    :cond_6
    const-string v5, "IEEE8021X"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    const-string v4, "IEEE8021X"

    goto :goto_1

    .line 202
    :cond_7
    if-eqz v3, :cond_3

    .line 203
    const-string v5, "RSN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 204
    const-string v4, "WPA2"

    goto :goto_1

    .line 205
    :cond_8
    const-string v5, "WPA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    const-string v4, "WPA"

    goto :goto_1
.end method

.method private static loadConfig()Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v2, config:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 262
    .local v5, temp:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 265
    :catch_0
    move-exception v6

    move-object v4, v6

    move-object v0, v1

    .line 266
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #temp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :try_start_3
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v7, "ctrl_interface=/data/misc/wifi/sockets\r\nctrl_interface_group=wifi\r\nupdate_config=1\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    :goto_2
    if-eqz v0, :cond_0

    .line 280
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 287
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_3
    return-object v2

    .line 278
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 280
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_2
    :goto_4
    move-object v0, v1

    .line 285
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 272
    .end local v5           #temp:Ljava/lang/String;
    .restart local v4       #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 273
    .local v3, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 278
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_3

    .line 280
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 278
    :cond_3
    :goto_6
    throw v6

    .line 275
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 276
    .local v4, ex:Ljava/io/IOException;
    :goto_7
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 278
    if-eqz v0, :cond_0

    .line 280
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 281
    :catch_3
    move-exception v3

    .line 282
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v3       #e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 281
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 282
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 281
    .end local v3           #e:Ljava/io/IOException;
    .local v4, ex:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v3

    goto :goto_8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #temp:Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 282
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 278
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 275
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v4, v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 265
    .end local v5           #temp:Ljava/lang/String;
    :catch_8
    move-exception v6

    move-object v4, v6

    goto :goto_1
.end method

.method private static saveConfig(Ljava/lang/StringBuffer;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x0

    .line 233
    const-string v4, "WifiConfigHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveConfig(), config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p0, :cond_0

    move v4, v7

    .line 252
    :goto_0
    return v4

    .line 238
    :cond_0
    const/4 v2, 0x0

    .line 240
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 247
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 252
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 242
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 243
    .local v1, ex:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move v4, v7

    .line 244
    goto :goto_0

    .line 246
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 247
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 246
    :goto_5
    throw v4

    .line 248
    :catch_1
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_4

    .line 242
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static setNetwork(ILjava/util/LinkedHashMap;)Z
    .locals 14
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 59
    if-nez p1, :cond_0

    move v10, v13

    .line 98
    :goto_0
    return v10

    .line 63
    :cond_0
    const-string v10, "WifiConfigHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetwork(), id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, item:Ljava/lang/String;
    const-string v11, "WifiConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNetwork(), item="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", value="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v1           #item:Ljava/lang/String;
    :cond_1
    const-string v10, "ssid"

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    move v10, v13

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    const/4 v3, -0x1

    .line 72
    .local v3, matchCount:I
    invoke-static {}, Lcom/asus/cm/util/WifiConfigHelper;->loadConfig()Ljava/lang/StringBuffer;

    move-result-object v9

    .line 73
    .local v9, wifiConfig:Ljava/lang/StringBuffer;
    const-string v7, "(?<=network=\\{\\r\\n)(?:.*?)(?=\\}\\r\\n)"

    .line 75
    .local v7, patternStr:Ljava/lang/String;
    const/16 v10, 0x2a

    invoke-static {v7, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 77
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 78
    .local v4, matcher:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 79
    add-int/lit8 v3, v3, 0x1

    if-ne v3, p0, :cond_3

    .line 80
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v8, replacement:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, key:Ljava/lang/String;
    const-string v10, "\t\t"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 85
    .end local v2           #key:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v5, newWifiConfig:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 89
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v5}, Lcom/asus/cm/util/WifiConfigHelper;->saveConfig(Ljava/lang/StringBuffer;)Z

    .line 95
    .end local v5           #newWifiConfig:Ljava/lang/StringBuffer;
    .end local v8           #replacement:Ljava/lang/StringBuffer;
    :cond_5
    if-eq v3, p0, :cond_6

    move v10, v13

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public static setSSID(ILjava/lang/String;)Z
    .locals 5
    .parameter "id"
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 155
    const-string v1, "WifiConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSID(), id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-gez p0, :cond_0

    move v1, v4

    .line 169
    :goto_0
    return v1

    .line 160
    :cond_0
    if-nez p1, :cond_1

    move v1, v4

    .line 161
    goto :goto_0

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/asus/cm/util/WifiConfigHelper;->getNetwork(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 165
    .local v0, network:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    move v1, v4

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "ssid"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p0, v0}, Lcom/asus/cm/util/WifiConfigHelper;->setNetwork(ILjava/util/LinkedHashMap;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setSecurity(ILjava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "security"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method
