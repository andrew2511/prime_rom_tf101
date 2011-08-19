.class public Lcom/google/android/voicesearch/speechservice/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/Utils$1;,
        Lcom/google/android/voicesearch/speechservice/Utils$AlternatesBundleKeys;
    }
.end annotation


# static fields
.field private static final AMR_INPUT_STREAM_CLASS:Ljava/lang/String; = "android.media.AmrInputStream"

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final MOCK_CONTACT_ALTERNATES:Z = false

.field private static final MOCK_DISPLAY_CONTACT_ACTION:I = 0x7

.field private static final MOCK_GO_TO_ACTION:I = 0x5

.field private static final MOCK_LISTEN_TO_ACTION:I = 0x6

.field private static final MOCK_NONE:I = 0x0

.field private static final MOCK_NOTE_TO_SELF_ACTION:I = 0x3

.field private static final MOCK_RESULTS:I = 0x0

.field private static final MOCK_SEND_EMAIL_ACTION:I = 0x2

.field private static final MOCK_SEND_SMS_ACTION:I = 0x1

.field private static final MOCK_SET_ALARM_ACTION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "is_super_primary"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "in_visible_group"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils;->DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method private static addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 319
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 320
    const-string v1, "type"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/google/android/voicesearch/AudioProvider;->getAudioFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 884
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_0
    return-void
.end method

.method static addMockActions(Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/voicesearch/speechservice/AudioBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 185
    packed-switch v5, :pswitch_data_0

    :goto_0
    move-object v0, v1

    .line 214
    :goto_1
    if-eqz v0, :cond_0

    .line 215
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding mocked action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    return-void

    .line 187
    :pswitch_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendSmsAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendSmsAction;

    move-result-object v0

    goto :goto_1

    .line 190
    :pswitch_1
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v0

    goto :goto_1

    .line 193
    :pswitch_2
    if-nez p2, :cond_1

    move-object v0, v1

    .line 195
    :goto_2
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-static {p1, v1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;Z)Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    move-result-object v0

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getAudio()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/speechservice/Utils;->addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 199
    :pswitch_3
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    const/16 v2, 0xa

    const/16 v3, 0x1e

    new-instance v4, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v1, "wake up lazy"

    invoke-direct {v4, v1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_1

    .line 203
    :pswitch_4
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedGoToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v0

    goto :goto_1

    .line 206
    :pswitch_5
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedListenToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v0

    goto :goto_1

    .line 209
    :pswitch_6
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedDisplayContactAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final buildClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1148
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1149
    const-string v1, "clientIdOverride"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_0

    .line 1151
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding client id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :goto_0
    return-object v0

    .line 1154
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1157
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string v0, " os=[Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    const-string v1, "Utils"

    const-string v2, "failed to retrieve package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    const-string v0, "0.0.0"

    goto :goto_1
.end method

.method public static final buildUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1191
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1192
    if-eqz v2, :cond_3

    .line 1193
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1195
    if-eqz v1, :cond_0

    .line 1196
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1206
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090736

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1210
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    return-object v0

    .line 1186
    :cond_2
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1201
    :cond_3
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static convertAlternatesProtoToBundle(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Landroid/os/Bundle;
    .locals 15
    .parameter

    .prologue
    const/4 v14, 0x0

    .line 1259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1260
    const-string v1, "max_span_length"

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getMaxSpanLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1262
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move v2, v14

    .line 1263
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1264
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v3

    .line 1265
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1266
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v5

    .line 1267
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v6

    .line 1269
    const-string v7, "start"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1270
    const-string v7, "length"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1271
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasConfidence()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1272
    const-string v7, "confidence"

    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1275
    :cond_0
    invoke-virtual {v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesCount()I

    move-result v7

    .line 1276
    new-array v8, v7, [Landroid/os/Parcelable;

    move v9, v14

    .line 1277
    :goto_1
    if-ge v9, v7, :cond_2

    .line 1278
    invoke-virtual {v3, v9}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v10

    .line 1279
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1280
    const-string v12, "text"

    invoke-virtual {v10}, Lcom/google/protos/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v10}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasConfidence()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1282
    const-string v12, "confidence"

    invoke-virtual {v10}, Lcom/google/protos/speech/common/Alternates$Alternate;->getConfidence()F

    move-result v10

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1285
    :cond_1
    aput-object v11, v8, v9

    .line 1277
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1287
    :cond_2
    if-lez v7, :cond_3

    .line 1288
    const-string v3, "alternates"

    invoke-virtual {v4, v3, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1291
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1294
    :cond_4
    const-string v2, "spans"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1295
    return-object v0
.end method

.method private static createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .parameter

    .prologue
    .line 1105
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->getAmrInputStreamClass()Ljava/lang/Class;

    move-result-object v0

    .line 1106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1107
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    return-object p0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1111
    :catch_1
    move-exception v0

    .line 1112
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1114
    :catch_2
    move-exception v0

    .line 1115
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1117
    :catch_3
    move-exception v0

    .line 1118
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1120
    :catch_4
    move-exception v0

    .line 1121
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1123
    :catch_5
    move-exception v0

    .line 1124
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1126
    :catch_6
    move-exception v0

    .line 1127
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createMockedContactAlternatesValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 4

    .prologue
    .line 418
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    const-string v2, "James Adam"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    .line 421
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    const-string v2, "James Roberts"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    .line 422
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    const-string v2, "James Smith"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    .line 424
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v1

    .line 426
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v2

    const-string v3, "James Roberts"

    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->addContact(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    .line 428
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v2

    .line 429
    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsWithAltsValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 430
    invoke-virtual {v2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsWithAltsValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 432
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method private static createMockedDisplayContactAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 3

    .prologue
    .line 440
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 441
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 442
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v1

    .line 443
    const-string v2, "Voice Mail"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 445
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setContactsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 446
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method private static createMockedGoToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 3

    .prologue
    .line 400
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 401
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 402
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v1

    .line 403
    const-string v2, "www.facebook.com"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setDisplayUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 404
    const-string v2, "http://www.facebook.com"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 405
    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 406
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setGoToInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 407
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method private static createMockedListenToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 412
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 413
    const-string v1, "peacebone"

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setQuery(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 414
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method private static createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 6

    .prologue
    .line 362
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 365
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v1

    .line 368
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v2

    .line 369
    const-string v3, "to"

    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 370
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 371
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v4

    .line 372
    const-string v5, "Bob Jones"

    invoke-virtual {v4, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 373
    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 374
    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 375
    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 385
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v2

    .line 386
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 387
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 388
    const-string v4, "meet you tonight at 8"

    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 389
    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 390
    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 392
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 393
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method private static createMockedSendSmsAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 6

    .prologue
    .line 330
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 331
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 333
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v1

    .line 336
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v2

    .line 337
    const-string v3, "to"

    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 338
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 339
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v4

    .line 340
    const-string v5, "Bob Jones"

    invoke-virtual {v4, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 341
    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 342
    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 343
    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 345
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v2

    .line 346
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 347
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 348
    const-string v4, "i\'ll be 5 minutes late"

    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 349
    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 350
    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 354
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method static decode([BI)[B
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x200

    .line 1009
    packed-switch p1, :pswitch_data_0

    move-object v0, p0

    .line 1024
    :goto_0
    return-object v0

    .line 1011
    :pswitch_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1012
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1013
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1014
    new-array v2, v3, [B

    .line 1016
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .line 1017
    if-gez v3, :cond_0

    .line 1022
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1020
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 895
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlotCount()I

    move-result v1

    .line 896
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 897
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v3

    .line 898
    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    :cond_0
    return-object v0
.end method

.method public static getAlternates(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 1222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1225
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->convertAlternatesProtoToBundle(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Landroid/os/Bundle;

    move-result-object v0

    .line 1228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAmrInputStreamClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1087
    const-string v0, "android.media.AmrInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioPacketSize(I)I
    .locals 3
    .parameter

    .prologue
    .line 1032
    packed-switch p0, :pswitch_data_0

    .line 1041
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :pswitch_1
    const/16 v0, 0xfa0

    .line 1039
    :goto_0
    return v0

    .line 1036
    :pswitch_2
    const/16 v0, 0x7d0

    goto :goto_0

    .line 1039
    :pswitch_3
    const/16 v0, 0x1c0

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getCallBusinessAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallBusinessAction;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasBusinessInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    const-string v0, "Utils"

    const-string v1, "call business action provided with no business response item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 677
    :goto_0
    return-object v0

    .line 662
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    const-string v0, "Utils"

    const-string v1, "call business action provided with no business name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 666
    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_2

    .line 669
    const-string v0, "Utils"

    const-string v1, "call business action provided with no phone number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 670
    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 677
    new-instance v0, Lcom/google/android/voicesearch/actions/CallBusinessAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/CallBusinessAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getCallContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/CallContactAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object p1

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v9

    .line 512
    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->hasPhoneNumberType()Z

    move-result v8

    .line 514
    if-eqz v8, :cond_e

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object p1

    .line 518
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 519
    const/4 v2, 0x7

    .line 520
    sget-object v3, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    move/from16 p1, v2

    .line 547
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    if-eqz v8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v5, p1

    :goto_2
    const/4 v6, 0x0

    const-string v7, "is_super_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 557
    const/4 v11, 0x0

    .line 560
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 563
    :cond_0
    if-eqz v8, :cond_d

    .line 564
    const/16 p2, 0x1

    .line 595
    :goto_3
    if-eqz p1, :cond_1

    .line 596
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_1
    if-nez p2, :cond_7

    move-object/from16 p0, v10

    .line 641
    :goto_4
    return-object p0

    .line 522
    :pswitch_0
    const/16 p1, 0x1

    .line 523
    goto :goto_1

    .line 525
    :pswitch_1
    const/16 p1, 0x3

    .line 526
    goto :goto_1

    .line 528
    :pswitch_2
    const/16 p1, 0x2

    .line 529
    goto :goto_1

    .line 531
    :pswitch_3
    const/16 p1, 0x5

    .line 532
    goto :goto_1

    .line 534
    :pswitch_4
    const/16 p1, 0x4

    .line 535
    goto :goto_1

    .line 537
    :pswitch_5
    const/16 p1, 0x7

    .line 538
    goto :goto_1

    .line 540
    :pswitch_6
    const/16 p1, 0x6

    goto :goto_1

    .line 547
    :cond_2
    const/16 p1, 0x0

    move-object/from16 v5, p1

    goto :goto_2

    .line 567
    :cond_3
    :try_start_1
    const-string v2, "data1"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 568
    const-string v2, "data2"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 569
    const-string v2, "is_super_primary"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 570
    const-string v2, "contact_id"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 572
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    move/from16 v16, v2

    .line 574
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 576
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 580
    :goto_6
    if-eqz v16, :cond_c

    if-nez v2, :cond_c

    .line 581
    const/4 v2, 0x1

    move v8, v2

    .line 584
    :goto_7
    new-instance v2, Lcom/google/android/voicesearch/actions/CallContactAction;

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v3, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 595
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 596
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    .line 572
    :cond_5
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_5

    .line 576
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 606
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p1 .. p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "is_super_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 614
    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result p2

    if-nez p2, :cond_a

    .line 636
    :cond_8
    if-eqz p1, :cond_9

    .line 637
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 p0, v10

    .line 641
    goto/16 :goto_4

    .line 618
    :cond_a
    :try_start_3
    const-string p2, "data1"

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 619
    const-string v2, "data2"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 620
    const-string v2, "contact_id"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 622
    :goto_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 625
    new-instance v2, Lcom/google/android/voicesearch/actions/CallContactAction;

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 636
    :catchall_1
    move-exception p0

    if-eqz p1, :cond_b

    .line 637
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p0

    :cond_c
    move/from16 v8, p2

    goto/16 :goto_7

    :cond_d
    move/from16 p2, v11

    goto/16 :goto_3

    :cond_e
    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getCallNumberAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallNumberAction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    const-string v0, "Utils"

    const-string v1, "call number action provided with no phone number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    .line 652
    :goto_0
    return-object v0

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 652
    new-instance v1, Lcom/google/android/voicesearch/actions/CallNumberAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/CallNumberAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 5
    .parameter

    .prologue
    .line 932
    new-instance v0, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static getDirectionsToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/DirectionsToAction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 693
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "Utils"

    const-string v1, "directions action provided with no query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 699
    :goto_0
    return-object v0

    .line 697
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 699
    new-instance v1, Lcom/google/android/voicesearch/actions/DirectionsToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/DirectionsToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/DisplayContactAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 451
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 454
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/voicesearch/speechservice/Utils;->DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    if-nez v7, :cond_0

    move-object v0, v6

    .line 496
    :goto_0
    return-object v0

    .line 470
    :cond_0
    :try_start_0
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 471
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 472
    const-string v0, "lookup"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 473
    const/4 v0, 0x0

    .line 477
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v11, :cond_3

    .line 480
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 483
    new-instance v0, Lcom/google/android/voicesearch/actions/DisplayContactAction;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v4}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_1

    move v5, v11

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/DisplayContactAction;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v5, p2

    .line 483
    goto :goto_2

    .line 493
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 496
    goto :goto_0

    :cond_3
    move v11, v0

    goto :goto_1
.end method

.method public static getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1049
    packed-switch p1, :pswitch_data_0

    .line 1058
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    .line 1055
    :goto_0
    return-object v0

    .line 1053
    :pswitch_2
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/Utils;->createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1055
    :pswitch_3
    new-instance v0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasGoToInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const-string v0, "Utils"

    const-string v1, "go-to action provided with no go-to response item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 747
    :goto_0
    return-object v0

    .line 731
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getGoToInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    const-string v0, "Utils"

    const-string v1, "go-to action provided with no url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 740
    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrl()Ljava/lang/String;

    move-result-object v3

    .line 747
    new-instance v0, Lcom/google/android/voicesearch/actions/GoToAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/GoToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const-string v0, "Utils"

    const-string v1, "listen action provided with no query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x0

    .line 721
    :goto_0
    return-object v0

    .line 719
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 721
    new-instance v1, Lcom/google/android/voicesearch/actions/ListenToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/ListenToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getMapOfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/MapOfAction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    const-string v0, "Utils"

    const-string v1, "map of action provided with no query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    .line 686
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/google/android/voicesearch/actions/MapOfAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/MapOfAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getNavigateToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/NavigateToAction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    const-string v0, "Utils"

    const-string v1, "navigate action provided with no query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    .line 710
    :goto_0
    return-object v0

    .line 708
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/google/android/voicesearch/actions/NavigateToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/NavigateToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;Z)Lcom/google/android/voicesearch/actions/NoteToSelfAction;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-static {p0, p1, p3}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v0

    .line 778
    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/SendEmailAction;Landroid/net/Uri;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getPhotoUri(J)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 500
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 502
    const-string v1, "photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 504
    return-object v0
.end method

.method static getSafeSearchSetting(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1133
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1134
    const-string v1, "safeSearch"

    const-string v2, "moderate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1141
    :goto_0
    return v0

    .line 1138
    :cond_0
    const-string v1, "strict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    const/4 v0, 0x2

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendEmailAction;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    const-string v0, "Utils"

    const-string v1, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    .line 818
    :goto_0
    return-object v0

    .line 793
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    .line 796
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v1

    .line 799
    const-string v0, "to"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 800
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v2

    .line 803
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 804
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v3

    .line 807
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 808
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v4

    .line 811
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 812
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v5

    .line 814
    const-string v0, "message"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 815
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v6

    .line 818
    new-instance v0, Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0
.end method

.method private static getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendSmsAction;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    const-string v0, "Utils"

    const-string v1, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    .line 842
    :goto_0
    return-object v0

    .line 828
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    .line 831
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v1

    .line 834
    const-string v0, "to"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 835
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v2

    .line 838
    const-string v0, "message"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 839
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v0

    .line 842
    new-instance v1, Lcom/google/android/voicesearch/actions/SendSmsAction;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/google/android/voicesearch/actions/SendSmsAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getSetAlarmAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SetAlarmAction;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    const-string v0, "Utils"

    const-string v1, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    .line 852
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    .line 854
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v1

    .line 856
    const-string v0, "label"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 857
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v4

    .line 859
    const-string v0, "minutes_from_now"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 860
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v0

    .line 863
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 864
    new-instance v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, p0, v0, v4, p2}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/TextValue;Z)V

    move-object v0, v1

    goto :goto_0

    .line 866
    :cond_1
    const-string v0, "hour"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 867
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v2

    .line 869
    const-string v0, "minutes"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 870
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v0

    .line 874
    if-ltz v2, :cond_2

    if-gez v0, :cond_3

    .line 875
    :cond_2
    const/16 v0, 0xc

    move v2, v0

    .line 879
    :goto_1
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static getShowWebResultAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 752
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasWebsearchInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    const-string v0, "Utils"

    const-string v1, "web search action provided with no web search response item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 772
    :goto_0
    return-object v0

    .line 757
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 759
    const-string v0, "Utils"

    const-string v1, "web search action provided with no query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 760
    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getPageHtml()Ljava/lang/String;

    move-result-object v3

    .line 764
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 772
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 942
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 976
    :goto_0
    return-object v0

    .line 948
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValueCount()I

    move-result v0

    .line 951
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValueCount()I

    move-result v2

    .line 953
    if-lez v2, :cond_2

    move v3, v8

    .line 954
    :goto_1
    if-ge v3, v2, :cond_3

    .line 955
    invoke-virtual {p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    .line 957
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 959
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContactCount()I

    move-result v5

    move v6, v8

    .line 960
    :goto_2
    if-ge v6, v5, :cond_1

    .line 961
    invoke-virtual {v0, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v7

    .line 962
    invoke-static {v7}, Lcom/google/android/voicesearch/speechservice/Utils;->getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 964
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/Contact;

    .line 965
    new-instance v5, Lcom/google/android/voicesearch/actions/CorrectionContact;

    new-instance v6, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-direct {v6, v4}, Lcom/google/android/voicesearch/actions/ContactAlternates;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v0, v6}, Lcom/google/android/voicesearch/actions/CorrectionContact;-><init>(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/ContactAlternates;)V

    .line 968
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 970
    :cond_2
    if-lez v0, :cond_3

    move v2, v8

    .line 971
    :goto_3
    if-ge v2, v0, :cond_3

    .line 972
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v3

    .line 973
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 976
    :cond_3
    new-instance v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I
    .locals 1
    .parameter

    .prologue
    .line 927
    if-nez p0, :cond_0

    const/4 v0, -0x1

    .line 928
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getIntValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getSlotStringValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 918
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSlotTextValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/TextValue;
    .locals 2
    .parameter

    .prologue
    .line 908
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotStringValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/String;

    move-result-object v0

    .line 909
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/actions/TextValue;

    invoke-direct {v1, v0}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static loadClasses()V
    .locals 2

    .prologue
    .line 1066
    const-class v0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1067
    const-class v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1068
    const-class v0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1070
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->getAmrInputStreamClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    const-class v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1075
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    const-string v0, "Utils"

    const-string v1, "AmrInputStream class not found. AMR will not be supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static parseApplicationData(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/speech/service/SpeechService$ApplicationData;[Ljava/lang/String;Lcom/google/android/voicesearch/speechservice/AudioBuffer;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/voicesearch/util/AccountHelper;",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/speechservice/AudioBuffer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    .line 235
    invoke-static {p1, v0, p3}, Lcom/google/android/voicesearch/speechservice/Utils;->parseGaiaStatusList(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;[Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p2, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .line 244
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hasDisplayDisambiguation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDisplayDisambiguation()Z

    move-result v2

    .line 247
    :goto_0
    invoke-static {v1, p0, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->addMockActions(Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V

    .line 251
    const/4 v3, 0x0

    .line 252
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretationCount()I

    move-result v4

    move v9, v5

    move-object v5, v3

    move v3, v9

    .line 253
    :goto_1
    if-ge v3, v4, :cond_1

    .line 254
    invoke-virtual {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    .line 256
    sget-object v8, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    .line 253
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :pswitch_0
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 261
    :pswitch_1
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallNumberAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallNumberAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 265
    :pswitch_2
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallBusinessAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallBusinessAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 269
    :pswitch_3
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 272
    :pswitch_4
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getMapOfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/MapOfAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 275
    :pswitch_5
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getDirectionsToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/DirectionsToAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 279
    :pswitch_6
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getNavigateToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/NavigateToAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 283
    :pswitch_7
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getShowWebResultAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    move-result-object v6

    .line 284
    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 287
    :pswitch_8
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 290
    :pswitch_9
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 293
    :pswitch_a
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 297
    :pswitch_b
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SendSmsAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 300
    :pswitch_c
    if-eqz p4, :cond_0

    if-nez v5, :cond_0

    .line 301
    invoke-virtual {p4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getAudio()[B

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v5

    .line 303
    :cond_0
    invoke-static {p0, v6, v5, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;Z)Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 307
    :pswitch_d
    invoke-static {p0, v6, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getSetAlarmAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/SetAlarmAction;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_2

    .line 315
    :cond_1
    return-object v1

    :cond_2
    move v2, v5

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static parseGaiaStatusList(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    if-nez p1, :cond_1

    .line 1002
    :cond_0
    return-void

    .line 983
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getGaiaStatusCount()I

    move-result v0

    .line 985
    if-eqz p2, :cond_0

    .line 990
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 991
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 996
    invoke-virtual {p1, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getGaiaStatus(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v2

    .line 997
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 999
    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/util/AccountHelper;->invalidateAuthToken(Ljava/lang/String;)V

    .line 990
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static parseRawRecognitionResult(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    .line 166
    if-nez v1, :cond_1

    .line 167
    const-string v0, "Utils"

    const-string v1, "No RecognitionResult found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v2

    move v3, v6

    .line 171
    :goto_1
    if-ge v3, v2, :cond_2

    .line 172
    invoke-virtual {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v4

    .line 173
    new-instance v5, Lcom/google/android/voicesearch/actions/ShowRawResultAction;

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p0, v4, v6}, Lcom/google/android/voicesearch/actions/ShowRawResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "Utils"

    const-string v2, "No Hypothesis in RecognitionResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
