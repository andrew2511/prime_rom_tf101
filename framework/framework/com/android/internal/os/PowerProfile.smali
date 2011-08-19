.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field static final TAG:Ljava/lang/String; = "PowerProfile"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 165
    :cond_e
    return-void
.end method

.method private readEpadPowerValuesFromXml(Landroid/content/Context;)Z
    .registers 23
    .parameter "context"

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Environment;->getEpadModelName_withConnectionType()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, model:Ljava/lang/String;
    if-eqz v8, :cond_c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 171
    :cond_c
    const-string v18, "PowerProfile"

    const-string v19, "can not get power profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v18, 0x0

    .line 244
    :goto_15
    return v18

    .line 175
    :cond_16
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/etc/power_profile/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_power_profile.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, path:Ljava/lang/String;
    const-string v18, "PowerProfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "read epad power profile:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_77

    .line 179
    const-string v18, "PowerProfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "can not find file:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v18, 0x0

    goto :goto_15

    .line 183
    :cond_77
    const/4 v14, 0x0

    .line 184
    .local v14, stream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 185
    .local v11, parsingArray:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v4, 0x0

    .line 188
    .local v4, arrayName:Ljava/lang/String;
    :try_start_7f
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_84} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_84} :catch_1a2

    .line 189
    .end local v14           #stream:Ljava/io/FileInputStream;
    .local v15, stream:Ljava/io/FileInputStream;
    :try_start_84
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 190
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 192
    const-string v18, "device"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 195
    :cond_99
    :goto_99
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 197
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, element:Ljava/lang/String;
    if-nez v6, :cond_c8

    .line 227
    if-eqz v11, :cond_bf

    .line 228
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v19, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bf
    .catchall {:try_start_84 .. :try_end_bf} :catchall_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_bf} :catch_16b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_bf} :catch_18d

    .line 236
    :cond_bf
    if-eqz v15, :cond_c4

    .line 237
    :try_start_c1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_19a

    .line 244
    :cond_c4
    :goto_c4
    const/16 v18, 0x1

    goto/16 :goto_15

    .line 200
    :cond_c8
    if-eqz v11, :cond_f2

    :try_start_ca
    const-string/jumbo v18, "value"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f2

    .line 202
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v19, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v11, 0x0

    .line 205
    :cond_f2
    const-string v18, "array"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10f

    .line 206
    const/4 v11, 0x1

    .line 207
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 208
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_99

    .line 209
    :cond_10f
    const-string v18, "item"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_126

    const-string/jumbo v18, "value"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_99

    .line 210
    :cond_126
    const/4 v9, 0x0

    .line 211
    .local v9, name:Ljava/lang/String;
    if-nez v11, :cond_136

    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    :cond_136
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_99

    .line 213
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_145
    .catchall {:try_start_ca .. :try_end_145} :catchall_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ca .. :try_end_145} :catch_16b
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_145} :catch_18d

    move-result-object v13

    .line 214
    .local v13, power:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 216
    .local v16, value:D
    :try_start_148
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D
    :try_end_14f
    .catchall {:try_start_148 .. :try_end_14f} :catchall_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_148 .. :try_end_14f} :catch_1aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_148 .. :try_end_14f} :catch_16b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14f} :catch_18d

    move-result-wide v16

    .line 219
    :goto_150
    :try_start_150
    const-string v18, "item"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17f

    .line 220
    sget-object v18, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_169
    .catchall {:try_start_150 .. :try_end_169} :catchall_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_169} :catch_16b
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_169} :catch_18d

    goto/16 :goto_99

    .line 230
    .end local v6           #element:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #power:Ljava/lang/String;
    .end local v16           #value:D
    :catch_16b
    move-exception v18

    move-object/from16 v5, v18

    move-object v14, v15

    .line 231
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_16f
    :try_start_16f
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_178
    .catchall {:try_start_16f .. :try_end_178} :catchall_178

    .line 235
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_178
    move-exception v18

    .line 236
    :goto_179
    if-eqz v14, :cond_17e

    .line 237
    :try_start_17b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_19d

    .line 241
    :cond_17e
    :goto_17e
    throw v18

    .line 221
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v6       #element:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #power:Ljava/lang/String;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #value:D
    :cond_17f
    if-eqz v11, :cond_99

    .line 222
    :try_start_181
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18b
    .catchall {:try_start_181 .. :try_end_18b} :catchall_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_181 .. :try_end_18b} :catch_16b
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_18b} :catch_18d

    goto/16 :goto_99

    .line 232
    .end local v6           #element:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #power:Ljava/lang/String;
    .end local v16           #value:D
    :catch_18d
    move-exception v18

    move-object/from16 v5, v18

    move-object v14, v15

    .line 233
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/io/IOException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_191
    :try_start_191
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_19a
    .catchall {:try_start_191 .. :try_end_19a} :catchall_178

    .line 239
    .end local v5           #e:Ljava/io/IOException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v6       #element:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    :catch_19a
    move-exception v18

    goto/16 :goto_c4

    .end local v6           #element:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :catch_19d
    move-exception v19

    goto :goto_17e

    .line 235
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    :catchall_19f
    move-exception v18

    move-object v14, v15

    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    goto :goto_179

    .line 232
    :catch_1a2
    move-exception v18

    move-object/from16 v5, v18

    goto :goto_191

    .line 230
    :catch_1a6
    move-exception v18

    move-object/from16 v5, v18

    goto :goto_16f

    .line 217
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v6       #element:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #power:Ljava/lang/String;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #value:D
    :catch_1aa
    move-exception v18

    goto :goto_150
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readEpadPowerValuesFromXml(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 307
    :goto_6
    return-void

    .line 253
    :cond_7
    const-string v11, "PowerProfile"

    const-string v12, "Can not read epad power porfile, use default"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const v4, 0x10f000a

    .line 256
    .local v4, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 257
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 258
    .local v7, parsingArray:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .line 262
    .local v1, arrayName:Ljava/lang/String;
    :try_start_20
    const-string v11, "device"

    invoke-static {v6, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 265
    :cond_25
    :goto_25
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, element:Ljava/lang/String;
    if-nez v3, :cond_43

    .line 297
    if-eqz v7, :cond_3f

    .line 298
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_3f} :catch_b5
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_3f} :catch_cd

    .line 305
    :cond_3f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6

    .line 270
    :cond_43
    if-eqz v7, :cond_5e

    :try_start_45
    const-string/jumbo v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    .line 272
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v7, 0x0

    .line 275
    :cond_5e
    const-string v11, "array"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_72

    .line 276
    const/4 v7, 0x1

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    .line 279
    :cond_72
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_83

    const-string/jumbo v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 280
    :cond_83
    const/4 v5, 0x0

    .line 281
    .local v5, name:Ljava/lang/String;
    if-nez v7, :cond_8d

    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    :cond_8d
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_25

    .line 283
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_45 .. :try_end_97} :catchall_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_97} :catch_b5
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_97} :catch_cd

    move-result-object v8

    .line 284
    .local v8, power:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 286
    .local v9, value:D
    :try_start_9a
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_a1} :catch_d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_a1} :catch_b5
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a1} :catch_cd

    move-result-wide v9

    .line 289
    :goto_a2
    :try_start_a2
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 290
    sget-object v11, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catchall {:try_start_a2 .. :try_end_b3} :catchall_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_b3} :catch_b5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b3} :catch_cd

    goto/16 :goto_25

    .line 300
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_b5
    move-exception v11

    move-object v2, v11

    .line 301
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b7
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bd

    .line 305
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_bd
    move-exception v11

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 291
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :cond_c2
    if-eqz v7, :cond_25

    .line 292
    :try_start_c4
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c4 .. :try_end_cb} :catch_b5
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cb} :catch_cd

    goto/16 :goto_25

    .line 302
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_cd
    move-exception v11

    move-object v2, v11

    .line 303
    .local v2, e:Ljava/io/IOException;
    :try_start_cf
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_bd

    .line 287
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :catch_d5
    move-exception v11

    goto :goto_a2
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .registers 5
    .parameter "type"

    .prologue
    .line 315
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 316
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, data:Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1e

    .line 318
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 323
    .end local p0
    :goto_1d
    return-wide v1

    .line 320
    .restart local v0       #data:Ljava/lang/Object;
    .restart local p0
    :cond_1e
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_1d

    .line 323
    .end local v0           #data:Ljava/lang/Object;
    .restart local p0
    :cond_2b
    const-wide/16 v1, 0x0

    goto :goto_1d
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .registers 9
    .parameter "type"
    .parameter "level"

    .prologue
    const-wide/16 v4, 0x0

    .line 336
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 337
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 338
    .local v1, data:Ljava/lang/Object;
    instance-of v3, v1, [Ljava/lang/Double;

    if-eqz v3, :cond_34

    .line 339
    check-cast v1, [Ljava/lang/Double;

    .end local v1           #data:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Double;

    move-object v2, v0

    .line 340
    .local v2, values:[Ljava/lang/Double;
    array-length v3, v2

    if-le v3, p2, :cond_26

    if-ltz p2, :cond_26

    .line 341
    aget-object v3, v2, p2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 351
    .end local v2           #values:[Ljava/lang/Double;
    :goto_25
    return-wide v3

    .line 342
    .restart local v2       #values:[Ljava/lang/Double;
    :cond_26
    if-gez p2, :cond_2a

    move-wide v3, v4

    .line 343
    goto :goto_25

    .line 345
    :cond_2a
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_25

    .line 348
    .end local v2           #values:[Ljava/lang/Double;
    .restart local v1       #data:Ljava/lang/Object;
    :cond_34
    check-cast v1, Ljava/lang/Double;

    .end local v1           #data:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_25

    :cond_3b
    move-wide v3, v4

    .line 351
    goto :goto_25
.end method

.method public getBatteryCapacity()D
    .registers 3

    .prologue
    .line 361
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumSpeedSteps()I
    .registers 4

    .prologue
    .line 369
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string v2, "cpu.speeds"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_14

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_14

    .line 371
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 373
    :goto_13
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method
