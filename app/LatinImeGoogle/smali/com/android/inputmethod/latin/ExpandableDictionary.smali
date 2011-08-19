.class public Lcom/android/inputmethod/latin/ExpandableDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/ExpandableDictionary$1;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    }
.end annotation


# static fields
.field private static final BASE_CHARS:[C


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mDicTypeId:I

.field private mInputLength:I

.field private mMaxDepth:I

.field private mRequiresReload:Z

.field private mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 553
    const/16 v0, 0x500

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0x80t 0x0t
        0x81t 0x0t
        0x82t 0x0t
        0x83t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x88t 0x0t
        0x89t 0x0t
        0x8at 0x0t
        0x8bt 0x0t
        0x8ct 0x0t
        0x8dt 0x0t
        0x8et 0x0t
        0x8ft 0x0t
        0x90t 0x0t
        0x91t 0x0t
        0x92t 0x0t
        0x93t 0x0t
        0x94t 0x0t
        0x95t 0x0t
        0x96t 0x0t
        0x97t 0x0t
        0x98t 0x0t
        0x99t 0x0t
        0x9at 0x0t
        0x9bt 0x0t
        0x9ct 0x0t
        0x9dt 0x0t
        0x9et 0x0t
        0x9ft 0x0t
        0x20t 0x0t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0x20t 0x0t
        0xa9t 0x0t
        0x61t 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0x20t 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x20t 0x0t
        0xbct 0x3t
        0xb6t 0x0t
        0xb7t 0x0t
        0x20t 0x0t
        0x31t 0x0t
        0x6ft 0x0t
        0xbbt 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0xbft 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0xc6t 0x0t
        0x43t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0xd0t 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0xd7t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x59t 0x0t
        0xdet 0x0t
        0x73t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0xe6t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0xf0t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0xf7t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0xfet 0x0t
        0x79t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x10t 0x1t
        0x11t 0x1t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x26t 0x1t
        0x27t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x31t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x4at 0x0t
        0x6at 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x38t 0x1t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x41t 0x1t
        0x42t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0xbct 0x2t
        0x4at 0x1t
        0x4bt 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x1t
        0x53t 0x1t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x66t 0x1t
        0x67t 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x57t 0x0t
        0x77t 0x0t
        0x59t 0x0t
        0x79t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x73t 0x0t
        0x80t 0x1t
        0x81t 0x1t
        0x82t 0x1t
        0x83t 0x1t
        0x84t 0x1t
        0x85t 0x1t
        0x86t 0x1t
        0x87t 0x1t
        0x88t 0x1t
        0x89t 0x1t
        0x8at 0x1t
        0x8bt 0x1t
        0x8ct 0x1t
        0x8dt 0x1t
        0x8et 0x1t
        0x8ft 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x93t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x96t 0x1t
        0x97t 0x1t
        0x98t 0x1t
        0x99t 0x1t
        0x9at 0x1t
        0x9bt 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0xb1t 0x1t
        0xb2t 0x1t
        0xb3t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb7t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xbat 0x1t
        0xbbt 0x1t
        0xbct 0x1t
        0xbdt 0x1t
        0xbet 0x1t
        0xbft 0x1t
        0xc0t 0x1t
        0xc1t 0x1t
        0xc2t 0x1t
        0xc3t 0x1t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x4ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xddt 0x1t
        0xc4t 0x0t
        0xe4t 0x0t
        0x26t 0x2t
        0x27t 0x2t
        0xc6t 0x0t
        0xe6t 0x0t
        0xe4t 0x1t
        0xe5t 0x1t
        0x47t 0x0t
        0x67t 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0xeat 0x1t
        0xebt 0x1t
        0xb7t 0x1t
        0x92t 0x2t
        0x6at 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0xf6t 0x1t
        0xf7t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0xc5t 0x0t
        0xe5t 0x0t
        0xc6t 0x0t
        0xe6t 0x0t
        0xd8t 0x0t
        0xf8t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x1ct 0x2t
        0x1dt 0x2t
        0x48t 0x0t
        0x68t 0x0t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0xd6t 0x0t
        0xf6t 0x0t
        0xd5t 0x0t
        0xf5t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x2et 0x2t
        0x2ft 0x2t
        0x59t 0x0t
        0x79t 0x0t
        0x34t 0x2t
        0x35t 0x2t
        0x36t 0x2t
        0x37t 0x2t
        0x38t 0x2t
        0x39t 0x2t
        0x3at 0x2t
        0x3bt 0x2t
        0x3ct 0x2t
        0x3dt 0x2t
        0x3et 0x2t
        0x3ft 0x2t
        0x40t 0x2t
        0x41t 0x2t
        0x42t 0x2t
        0x43t 0x2t
        0x44t 0x2t
        0x45t 0x2t
        0x46t 0x2t
        0x47t 0x2t
        0x48t 0x2t
        0x49t 0x2t
        0x4at 0x2t
        0x4bt 0x2t
        0x4ct 0x2t
        0x4dt 0x2t
        0x4et 0x2t
        0x4ft 0x2t
        0x50t 0x2t
        0x51t 0x2t
        0x52t 0x2t
        0x53t 0x2t
        0x54t 0x2t
        0x55t 0x2t
        0x56t 0x2t
        0x57t 0x2t
        0x58t 0x2t
        0x59t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x84t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x90t 0x2t
        0x91t 0x2t
        0x92t 0x2t
        0x93t 0x2t
        0x94t 0x2t
        0x95t 0x2t
        0x96t 0x2t
        0x97t 0x2t
        0x98t 0x2t
        0x99t 0x2t
        0x9at 0x2t
        0x9bt 0x2t
        0x9ct 0x2t
        0x9dt 0x2t
        0x9et 0x2t
        0x9ft 0x2t
        0xa0t 0x2t
        0xa1t 0x2t
        0xa2t 0x2t
        0xa3t 0x2t
        0xa4t 0x2t
        0xa5t 0x2t
        0xa6t 0x2t
        0xa7t 0x2t
        0xa8t 0x2t
        0xa9t 0x2t
        0xaat 0x2t
        0xabt 0x2t
        0xact 0x2t
        0xadt 0x2t
        0xaet 0x2t
        0xaft 0x2t
        0x68t 0x0t
        0x66t 0x2t
        0x6at 0x0t
        0x72t 0x0t
        0x79t 0x2t
        0x7bt 0x2t
        0x81t 0x2t
        0x77t 0x0t
        0x79t 0x0t
        0xb9t 0x2t
        0xbat 0x2t
        0xbbt 0x2t
        0xbct 0x2t
        0xbdt 0x2t
        0xbet 0x2t
        0xbft 0x2t
        0xc0t 0x2t
        0xc1t 0x2t
        0xc2t 0x2t
        0xc3t 0x2t
        0xc4t 0x2t
        0xc5t 0x2t
        0xc6t 0x2t
        0xc7t 0x2t
        0xc8t 0x2t
        0xc9t 0x2t
        0xcat 0x2t
        0xcbt 0x2t
        0xcct 0x2t
        0xcdt 0x2t
        0xcet 0x2t
        0xcft 0x2t
        0xd0t 0x2t
        0xd1t 0x2t
        0xd2t 0x2t
        0xd3t 0x2t
        0xd4t 0x2t
        0xd5t 0x2t
        0xd6t 0x2t
        0xd7t 0x2t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0xdet 0x2t
        0xdft 0x2t
        0x63t 0x2t
        0x6ct 0x0t
        0x73t 0x0t
        0x78t 0x0t
        0x95t 0x2t
        0xe5t 0x2t
        0xe6t 0x2t
        0xe7t 0x2t
        0xe8t 0x2t
        0xe9t 0x2t
        0xeat 0x2t
        0xebt 0x2t
        0xect 0x2t
        0xedt 0x2t
        0xeet 0x2t
        0xeft 0x2t
        0xf0t 0x2t
        0xf1t 0x2t
        0xf2t 0x2t
        0xf3t 0x2t
        0xf4t 0x2t
        0xf5t 0x2t
        0xf6t 0x2t
        0xf7t 0x2t
        0xf8t 0x2t
        0xf9t 0x2t
        0xfat 0x2t
        0xfbt 0x2t
        0xfct 0x2t
        0xfdt 0x2t
        0xfet 0x2t
        0xfft 0x2t
        0x0t 0x3t
        0x1t 0x3t
        0x2t 0x3t
        0x3t 0x3t
        0x4t 0x3t
        0x5t 0x3t
        0x6t 0x3t
        0x7t 0x3t
        0x8t 0x3t
        0x9t 0x3t
        0xat 0x3t
        0xbt 0x3t
        0xct 0x3t
        0xdt 0x3t
        0xet 0x3t
        0xft 0x3t
        0x10t 0x3t
        0x11t 0x3t
        0x12t 0x3t
        0x13t 0x3t
        0x14t 0x3t
        0x15t 0x3t
        0x16t 0x3t
        0x17t 0x3t
        0x18t 0x3t
        0x19t 0x3t
        0x1at 0x3t
        0x1bt 0x3t
        0x1ct 0x3t
        0x1dt 0x3t
        0x1et 0x3t
        0x1ft 0x3t
        0x20t 0x3t
        0x21t 0x3t
        0x22t 0x3t
        0x23t 0x3t
        0x24t 0x3t
        0x25t 0x3t
        0x26t 0x3t
        0x27t 0x3t
        0x28t 0x3t
        0x29t 0x3t
        0x2at 0x3t
        0x2bt 0x3t
        0x2ct 0x3t
        0x2dt 0x3t
        0x2et 0x3t
        0x2ft 0x3t
        0x30t 0x3t
        0x31t 0x3t
        0x32t 0x3t
        0x33t 0x3t
        0x34t 0x3t
        0x35t 0x3t
        0x36t 0x3t
        0x37t 0x3t
        0x38t 0x3t
        0x39t 0x3t
        0x3at 0x3t
        0x3bt 0x3t
        0x3ct 0x3t
        0x3dt 0x3t
        0x3et 0x3t
        0x3ft 0x3t
        0x0t 0x3t
        0x1t 0x3t
        0x42t 0x3t
        0x13t 0x3t
        0x8t 0x3t
        0x45t 0x3t
        0x46t 0x3t
        0x47t 0x3t
        0x48t 0x3t
        0x49t 0x3t
        0x4at 0x3t
        0x4bt 0x3t
        0x4ct 0x3t
        0x4dt 0x3t
        0x4et 0x3t
        0x4ft 0x3t
        0x50t 0x3t
        0x51t 0x3t
        0x52t 0x3t
        0x53t 0x3t
        0x54t 0x3t
        0x55t 0x3t
        0x56t 0x3t
        0x57t 0x3t
        0x58t 0x3t
        0x59t 0x3t
        0x5at 0x3t
        0x5bt 0x3t
        0x5ct 0x3t
        0x5dt 0x3t
        0x5et 0x3t
        0x5ft 0x3t
        0x60t 0x3t
        0x61t 0x3t
        0x62t 0x3t
        0x63t 0x3t
        0x64t 0x3t
        0x65t 0x3t
        0x66t 0x3t
        0x67t 0x3t
        0x68t 0x3t
        0x69t 0x3t
        0x6at 0x3t
        0x6bt 0x3t
        0x6ct 0x3t
        0x6dt 0x3t
        0x6et 0x3t
        0x6ft 0x3t
        0x70t 0x3t
        0x71t 0x3t
        0x72t 0x3t
        0x73t 0x3t
        0xb9t 0x2t
        0x75t 0x3t
        0x76t 0x3t
        0x77t 0x3t
        0x78t 0x3t
        0x79t 0x3t
        0x20t 0x0t
        0x7bt 0x3t
        0x7ct 0x3t
        0x7dt 0x3t
        0x3bt 0x0t
        0x7ft 0x3t
        0x80t 0x3t
        0x81t 0x3t
        0x82t 0x3t
        0x83t 0x3t
        0x20t 0x0t
        0xa8t 0x0t
        0x91t 0x3t
        0xb7t 0x0t
        0x95t 0x3t
        0x97t 0x3t
        0x99t 0x3t
        0x8bt 0x3t
        0x9ft 0x3t
        0x8dt 0x3t
        0xa5t 0x3t
        0xa9t 0x3t
        0xcat 0x3t
        0x91t 0x3t
        0x92t 0x3t
        0x93t 0x3t
        0x94t 0x3t
        0x95t 0x3t
        0x96t 0x3t
        0x97t 0x3t
        0x98t 0x3t
        0x99t 0x3t
        0x9at 0x3t
        0x9bt 0x3t
        0x9ct 0x3t
        0x9dt 0x3t
        0x9et 0x3t
        0x9ft 0x3t
        0xa0t 0x3t
        0xa1t 0x3t
        0xa2t 0x3t
        0xa3t 0x3t
        0xa4t 0x3t
        0xa5t 0x3t
        0xa6t 0x3t
        0xa7t 0x3t
        0xa8t 0x3t
        0xa9t 0x3t
        0x99t 0x3t
        0xa5t 0x3t
        0xb1t 0x3t
        0xb5t 0x3t
        0xb7t 0x3t
        0xb9t 0x3t
        0xcbt 0x3t
        0xb1t 0x3t
        0xb2t 0x3t
        0xb3t 0x3t
        0xb4t 0x3t
        0xb5t 0x3t
        0xb6t 0x3t
        0xb7t 0x3t
        0xb8t 0x3t
        0xb9t 0x3t
        0xbat 0x3t
        0xbbt 0x3t
        0xbct 0x3t
        0xbdt 0x3t
        0xbet 0x3t
        0xbft 0x3t
        0xc0t 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xc3t 0x3t
        0xc4t 0x3t
        0xc5t 0x3t
        0xc6t 0x3t
        0xc7t 0x3t
        0xc8t 0x3t
        0xc9t 0x3t
        0xb9t 0x3t
        0xc5t 0x3t
        0xbft 0x3t
        0xc5t 0x3t
        0xc9t 0x3t
        0xcft 0x3t
        0xb2t 0x3t
        0xb8t 0x3t
        0xa5t 0x3t
        0xd2t 0x3t
        0xd2t 0x3t
        0xc6t 0x3t
        0xc0t 0x3t
        0xd7t 0x3t
        0xd8t 0x3t
        0xd9t 0x3t
        0xdat 0x3t
        0xdbt 0x3t
        0xdct 0x3t
        0xddt 0x3t
        0xdet 0x3t
        0xdft 0x3t
        0xe0t 0x3t
        0xe1t 0x3t
        0xe2t 0x3t
        0xe3t 0x3t
        0xe4t 0x3t
        0xe5t 0x3t
        0xe6t 0x3t
        0xe7t 0x3t
        0xe8t 0x3t
        0xe9t 0x3t
        0xeat 0x3t
        0xebt 0x3t
        0xect 0x3t
        0xedt 0x3t
        0xeet 0x3t
        0xeft 0x3t
        0xbat 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xf3t 0x3t
        0x98t 0x3t
        0xb5t 0x3t
        0xf6t 0x3t
        0xf7t 0x3t
        0xf8t 0x3t
        0xa3t 0x3t
        0xfat 0x3t
        0xfbt 0x3t
        0xfct 0x3t
        0xfdt 0x3t
        0xfet 0x3t
        0xfft 0x3t
        0x15t 0x4t
        0x15t 0x4t
        0x2t 0x4t
        0x13t 0x4t
        0x4t 0x4t
        0x5t 0x4t
        0x6t 0x4t
        0x6t 0x4t
        0x8t 0x4t
        0x9t 0x4t
        0xat 0x4t
        0xbt 0x4t
        0x1at 0x4t
        0x18t 0x4t
        0x23t 0x4t
        0xft 0x4t
        0x10t 0x4t
        0x11t 0x4t
        0x12t 0x4t
        0x13t 0x4t
        0x14t 0x4t
        0x15t 0x4t
        0x16t 0x4t
        0x17t 0x4t
        0x18t 0x4t
        0x18t 0x4t
        0x1at 0x4t
        0x1bt 0x4t
        0x1ct 0x4t
        0x1dt 0x4t
        0x1et 0x4t
        0x1ft 0x4t
        0x20t 0x4t
        0x21t 0x4t
        0x22t 0x4t
        0x23t 0x4t
        0x24t 0x4t
        0x25t 0x4t
        0x26t 0x4t
        0x27t 0x4t
        0x28t 0x4t
        0x29t 0x4t
        0x2at 0x4t
        0x2bt 0x4t
        0x2ct 0x4t
        0x2dt 0x4t
        0x2et 0x4t
        0x2ft 0x4t
        0x30t 0x4t
        0x31t 0x4t
        0x32t 0x4t
        0x33t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x36t 0x4t
        0x37t 0x4t
        0x38t 0x4t
        0x38t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x3et 0x4t
        0x3ft 0x4t
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x46t 0x4t
        0x47t 0x4t
        0x48t 0x4t
        0x49t 0x4t
        0x4at 0x4t
        0x4bt 0x4t
        0x4ct 0x4t
        0x4dt 0x4t
        0x4et 0x4t
        0x4ft 0x4t
        0x35t 0x4t
        0x35t 0x4t
        0x52t 0x4t
        0x33t 0x4t
        0x54t 0x4t
        0x55t 0x4t
        0x56t 0x4t
        0x56t 0x4t
        0x58t 0x4t
        0x59t 0x4t
        0x5at 0x4t
        0x5bt 0x4t
        0x3at 0x4t
        0x38t 0x4t
        0x43t 0x4t
        0x5ft 0x4t
        0x60t 0x4t
        0x61t 0x4t
        0x62t 0x4t
        0x63t 0x4t
        0x64t 0x4t
        0x65t 0x4t
        0x66t 0x4t
        0x67t 0x4t
        0x68t 0x4t
        0x69t 0x4t
        0x6at 0x4t
        0x6bt 0x4t
        0x6ct 0x4t
        0x6dt 0x4t
        0x6et 0x4t
        0x6ft 0x4t
        0x70t 0x4t
        0x71t 0x4t
        0x72t 0x4t
        0x73t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x78t 0x4t
        0x79t 0x4t
        0x7at 0x4t
        0x7bt 0x4t
        0x7ct 0x4t
        0x7dt 0x4t
        0x7et 0x4t
        0x7ft 0x4t
        0x80t 0x4t
        0x81t 0x4t
        0x82t 0x4t
        0x83t 0x4t
        0x84t 0x4t
        0x85t 0x4t
        0x86t 0x4t
        0x87t 0x4t
        0x88t 0x4t
        0x89t 0x4t
        0x8at 0x4t
        0x8bt 0x4t
        0x8ct 0x4t
        0x8dt 0x4t
        0x8et 0x4t
        0x8ft 0x4t
        0x90t 0x4t
        0x91t 0x4t
        0x92t 0x4t
        0x93t 0x4t
        0x94t 0x4t
        0x95t 0x4t
        0x96t 0x4t
        0x97t 0x4t
        0x98t 0x4t
        0x99t 0x4t
        0x9at 0x4t
        0x9bt 0x4t
        0x9ct 0x4t
        0x9dt 0x4t
        0x9et 0x4t
        0x9ft 0x4t
        0xa0t 0x4t
        0xa1t 0x4t
        0xa2t 0x4t
        0xa3t 0x4t
        0xa4t 0x4t
        0xa5t 0x4t
        0xa6t 0x4t
        0xa7t 0x4t
        0xa8t 0x4t
        0xa9t 0x4t
        0xaat 0x4t
        0xabt 0x4t
        0xact 0x4t
        0xadt 0x4t
        0xaet 0x4t
        0xaft 0x4t
        0xb0t 0x4t
        0xb1t 0x4t
        0xb2t 0x4t
        0xb3t 0x4t
        0xb4t 0x4t
        0xb5t 0x4t
        0xb6t 0x4t
        0xb7t 0x4t
        0xb8t 0x4t
        0xb9t 0x4t
        0xbat 0x4t
        0xbbt 0x4t
        0xbct 0x4t
        0xbdt 0x4t
        0xbet 0x4t
        0xbft 0x4t
        0xc0t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0xc3t 0x4t
        0xc4t 0x4t
        0xc5t 0x4t
        0xc6t 0x4t
        0xc7t 0x4t
        0xc8t 0x4t
        0xc9t 0x4t
        0xcat 0x4t
        0xcbt 0x4t
        0xcct 0x4t
        0xcdt 0x4t
        0xcet 0x4t
        0xcft 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0xd4t 0x4t
        0xd5t 0x4t
        0x15t 0x4t
        0x35t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0x17t 0x4t
        0x37t 0x4t
        0xe0t 0x4t
        0xe1t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x1et 0x4t
        0x3et 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0x2dt 0x4t
        0x4dt 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x27t 0x4t
        0x47t 0x4t
        0xf6t 0x4t
        0xf7t 0x4t
        0x2bt 0x4t
        0x4bt 0x4t
        0xfat 0x4t
        0xfbt 0x4t
        0xfct 0x4t
        0xfdt 0x4t
        0xfet 0x4t
        0xfft 0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "dicTypeId"

    .prologue
    const/16 v1, 0x20

    .line 109
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 36
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->clearDictionary()V

    .line 112
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 113
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    .line 114
    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    return p1
.end method

.method private addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 8
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"
    .parameter "addFrequency"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 370
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v5, p1, v6, v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    .line 371
    .local v1, firstWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v5, p2, v6, v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 372
    .local v4, secondWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 373
    .local v0, bigram:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 374
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 375
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 387
    :cond_1
    iget-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    invoke-direct {v6, v4, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v5, p3

    .line 388
    :goto_0
    return v5

    .line 377
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 378
    .local v3, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    if-ne v5, v4, :cond_3

    .line 379
    if-eqz p4, :cond_4

    .line 380
    invoke-virtual {v3, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->addFrequency(I)I

    move-result v5

    goto :goto_0

    .line 382
    :cond_4
    invoke-virtual {v3, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->setFrequency(I)I

    move-result v5

    goto :goto_0
.end method

.method private addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V
    .locals 13
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "frequency"
    .parameter "parentNode"

    .prologue
    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 160
    .local v12, wordLength:I
    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 163
    .local v8, c:C
    iget v9, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 164
    .local v9, childrenLength:I
    const/4 v7, 0x0

    .line 165
    .local v7, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v10, 0x0

    .line 166
    .local v10, found:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v9, :cond_2

    .line 167
    iget-object v2, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v7, v2, v11

    .line 168
    iget-char v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v2, v8, :cond_4

    .line 169
    const/4 v10, 0x1

    .line 173
    :cond_2
    if-nez v10, :cond_3

    .line 174
    new-instance v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v7           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    .line 175
    .restart local v7       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v8, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 176
    move-object/from16 v0, p5

    move-object v1, v7

    iput-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 177
    invoke-virtual {p1, v7}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 179
    :cond_3
    add-int/lit8 v2, p3, 0x1

    if-ne v12, v2, :cond_5

    .line 181
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    .line 182
    iget v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v0, p4

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    .line 183
    iget v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    const/16 v2, 0xff

    iput v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_0

    .line 166
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 186
    :cond_5
    iget-object v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v2, :cond_6

    .line 187
    new-instance v2, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v2}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v2, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 189
    :cond_6
    iget-object v3, v7, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    goto :goto_0
.end method

.method private static computeSkippedWordFinalFreq(III)I
    .locals 2
    .parameter "freq"
    .parameter "snr"
    .parameter "inputLength"

    .prologue
    .line 236
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 237
    mul-int v0, p0, p1

    const/4 v1, 0x2

    sub-int v1, p2, v1

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int v1, p2, v1

    div-int/2addr v0, v1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 10
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;",
            ">;",
            "Lcom/android/inputmethod/latin/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, terminalNodes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    const/4 v2, 0x0

    .line 474
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 475
    .local v8, nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    iget-object v9, v8, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 476
    .local v9, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    invoke-virtual {v8}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getFrequency()I

    move-result v4

    .line 478
    .local v4, freq:I
    const/16 v0, 0xc

    if-lt v4, v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    iget-char v1, v9, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 482
    iget-object v9, v9, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 483
    if-nez v9, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    goto :goto_0

    .line 490
    .end local v4           #freq:I
    .end local v8           #nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    .end local v9           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    return-void
.end method

.method private runReverseLookUp(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 4
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 438
    .local v0, prevWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 441
    :cond_0
    return-void
.end method

.method private searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 7
    .parameter "children"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 499
    iget v0, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 500
    .local v0, count:I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 501
    .local v1, currentChar:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 502
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v3, v5, v2

    .line 503
    .local v3, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v5, v1, :cond_1

    .line 504
    const/4 v5, 0x1

    sub-int v5, p4, v5

    if-ne p3, v5, :cond_0

    .line 505
    iget-boolean v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 516
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :goto_1
    return-object v5

    .line 509
    .restart local v3       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_0
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-eqz v5, :cond_1

    .line 510
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 511
    .local v4, returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_1

    .line 501
    .end local v4           #returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 8
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "parentNode"

    .prologue
    .line 396
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 397
    .local v5, wordLength:I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, c:C
    iget v2, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 400
    .local v2, childrenLength:I
    const/4 v1, 0x0

    .line 401
    .local v1, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v3, 0x0

    .line 402
    .local v3, found:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 403
    iget-object v6, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v1, v6, v4

    .line 404
    iget-char v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v6, v0, :cond_2

    .line 405
    const/4 v3, 0x1

    .line 409
    :cond_0
    if-nez v3, :cond_1

    .line 410
    new-instance v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v1           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    .line 411
    .restart local v1       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 412
    iput-object p4, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 413
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 415
    :cond_1
    add-int/lit8 v6, p3, 0x1

    if-ne v5, v6, :cond_3

    .line 417
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    move-object v6, v1

    .line 423
    :goto_1
    return-object v6

    .line 402
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    :cond_3
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v6, :cond_4

    .line 421
    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 423
    :cond_4
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v6

    goto :goto_1
.end method

.method private static toLowerCase(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 535
    move v0, p0

    .line 536
    .local v0, baseChar:C
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 537
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    aget-char v0, v1, p0

    .line 539
    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 540
    or-int/lit8 v1, v0, 0x20

    int-to-char v1, v1

    .line 544
    :goto_0
    return v1

    .line 541
    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 542
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 544
    goto :goto_0
.end method


# virtual methods
.method protected addBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public addWord(Ljava/lang/String;I)V
    .locals 6
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 155
    return-void
.end method

.method protected clearDictionary()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 521
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 1
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->runReverseLookUp(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 449
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMaxWordLength()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x20

    return v0
.end method

.method public getRequiresReload()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    return v0
.end method

.method protected getWordFrequency(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "word"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 230
    .local v0, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 10
    .parameter "codes"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 198
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    .line 212
    :cond_1
    return-void

    .line 199
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    .line 202
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    array-length v0, v0

    iget v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 204
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v8, v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    invoke-virtual {p1, v8}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v1

    aput-object v1, v0, v8

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 199
    .end local v8           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 207
    .restart local v8       #i:I
    :cond_4
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    .line 208
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    const/4 v8, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 209
    .end local v8           #i:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v8, v0, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 33
    .parameter "roots"
    .parameter "codes"
    .parameter "word"
    .parameter "depth"
    .parameter "completion"
    .parameter "snr"
    .parameter "inputIndex"
    .parameter "skipPos"
    .parameter "callback"

    .prologue
    .line 266
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    move/from16 v24, v0

    .line 267
    .local v24, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v23, v0

    .line 269
    .local v23, codeSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    move v4, v0

    move/from16 v0, p4

    move v1, v4

    if-le v0, v1, :cond_1

    .line 353
    :cond_0
    return-void

    .line 272
    :cond_1
    const/16 v26, 0x0

    .line 273
    .local v26, currentChars:[I
    move/from16 v0, v23

    move/from16 v1, p7

    if-gt v0, v1, :cond_4

    .line 274
    const/16 p5, 0x1

    .line 279
    :goto_0
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 280
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-object v4, v0

    aget-object v31, v4, v28

    .line 281
    .local v31, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    move-object/from16 v0, v31

    iget-char v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    move/from16 v21, v0

    .line 282
    .local v21, c:C
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v30

    .line 283
    .local v30, lowerC:C
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    move/from16 v32, v0

    .line 284
    .local v32, terminal:Z
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    move-object/from16 v22, v0

    .line 285
    .local v22, children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v27, v0

    .line 286
    .local v27, freq:I
    if-eqz p5, :cond_6

    .line 287
    aput-char v21, p3, p4

    .line 288
    if-eqz v32, :cond_2

    .line 290
    if-gez p8, :cond_5

    .line 291
    mul-int v8, v27, p6

    .line 295
    .local v8, finalFreq:I
    :goto_2
    const/4 v6, 0x0

    add-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    move v9, v0

    sget-object v10, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v4, p9

    move-object/from16 v5, p3

    invoke-interface/range {v4 .. v10}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    .end local v8           #finalFreq:I
    :cond_2
    if-eqz v22, :cond_3

    .line 301
    add-int/lit8 v13, p4, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 279
    :cond_3
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 276
    .end local v21           #c:C
    .end local v22           #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .end local v27           #freq:I
    .end local v28           #i:I
    .end local v30           #lowerC:C
    .end local v31           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .end local v32           #terminal:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    move-object v4, v0

    aget-object v26, v4, p7

    goto :goto_0

    .line 293
    .restart local v21       #c:C
    .restart local v22       #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .restart local v27       #freq:I
    .restart local v28       #i:I
    .restart local v30       #lowerC:C
    .restart local v31       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .restart local v32       #terminal:Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move v4, v0

    move/from16 v0, v27

    move/from16 v1, p6

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v8

    .restart local v8       #finalFreq:I
    goto :goto_2

    .line 304
    .end local v8           #finalFreq:I
    :cond_6
    const/16 v4, 0x27

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_7

    const/4 v4, 0x0

    aget v4, v26, v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_8

    :cond_7
    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_9

    .line 306
    :cond_8
    aput-char v21, p3, p4

    .line 307
    if-eqz v22, :cond_3

    .line 308
    add-int/lit8 v13, p4, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_3

    .line 313
    :cond_9
    if-ltz p8, :cond_d

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 314
    .local v20, alternativesSize:I
    :goto_4
    const/16 v29, 0x0

    .local v29, j:I
    :goto_5
    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 315
    if-lez v29, :cond_e

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 316
    .local v19, addedAttenuation:I
    :goto_6
    aget v25, v26, v29

    .line 317
    .local v25, currentChar:I
    const/4 v4, -0x1

    move/from16 v0, v25

    move v1, v4

    if-eq v0, v1, :cond_3

    .line 320
    move/from16 v0, v25

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 321
    :cond_a
    aput-char v21, p3, p4

    .line 323
    add-int/lit8 v4, p7, 0x1

    move/from16 v0, v23

    move v1, v4

    if-ne v0, v1, :cond_10

    .line 324
    if-eqz v32, :cond_b

    .line 325
    add-int/lit8 v4, p4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->same([CILjava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 328
    if-gez p8, :cond_f

    .line 329
    mul-int v4, v27, p6

    mul-int v4, v4, v19

    mul-int/lit8 v8, v4, 0x2

    .line 335
    .restart local v8       #finalFreq:I
    :goto_7
    const/4 v6, 0x0

    add-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    move v9, v0

    sget-object v10, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v4, p9

    move-object/from16 v5, p3

    invoke-interface/range {v4 .. v10}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 339
    .end local v8           #finalFreq:I
    :cond_b
    if-eqz v22, :cond_c

    .line 340
    add-int/lit8 v13, p4, 0x1

    const/4 v14, 0x1

    mul-int v15, p6, v19

    add-int/lit8 v16, p7, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 314
    :cond_c
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 313
    .end local v19           #addedAttenuation:I
    .end local v20           #alternativesSize:I
    .end local v25           #currentChar:I
    .end local v29           #j:I
    :cond_d
    move-object/from16 v0, v26

    array-length v0, v0

    move v4, v0

    move/from16 v20, v4

    goto :goto_4

    .line 315
    .restart local v20       #alternativesSize:I
    .restart local v29       #j:I
    :cond_e
    const/4 v4, 0x2

    move/from16 v19, v4

    goto :goto_6

    .line 332
    .restart local v19       #addedAttenuation:I
    .restart local v25       #currentChar:I
    :cond_f
    mul-int v4, p6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move v5, v0

    move/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v8

    .restart local v8       #finalFreq:I
    goto :goto_7

    .line 344
    .end local v8           #finalFreq:I
    :cond_10
    if-eqz v22, :cond_c

    .line 345
    add-int/lit8 v13, p4, 0x1

    const/4 v14, 0x0

    mul-int v15, p6, v19

    add-int/lit8 v16, p7, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_8
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "word"

    .prologue
    const/4 v3, 0x0

    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 219
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 222
    :goto_0
    monitor-exit p0

    return v1

    .line 220
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 222
    .local v0, freq:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 220
    .end local v0           #freq:I
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0       #freq:I
    :cond_2
    move v1, v3

    .line 222
    goto :goto_0
.end method

.method public loadDictionary()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadDictionaryAsync()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 432
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v0

    return v1

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public setRequiresReload(Z)V
    .locals 2
    .parameter "reload"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    .line 126
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    :cond_0
    return-void
.end method

.method waitForDictionaryLoading()V
    .locals 2

    .prologue
    .line 456
    :goto_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_0

    .line 458
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method
