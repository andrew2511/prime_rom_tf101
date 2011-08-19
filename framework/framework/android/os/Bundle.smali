.class public final Landroid/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 40
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 1564
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 7
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 115
    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_44

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 117
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 118
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    :goto_2a
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_47

    .line 124
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 129
    :goto_37
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 130
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 131
    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 132
    return-void

    .line 120
    :cond_44
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_2a

    .line 126
    :cond_47
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    goto :goto_37
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "parcelledData"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "parcelledData"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "loader"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 95
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 142
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .registers 11
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    .line 776
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 777
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .registers 9
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "defaultValue"
    .parameter "e"

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 769
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v1, "Bundle"

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 243
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 246
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 257
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 3

    .prologue
    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, mask:I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1581
    or-int/lit8 v0, v0, 0x1

    .line 1583
    :cond_9
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 268
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 754
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 788
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 789
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 796
    :goto_c
    return v1

    .line 793
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 794
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 795
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 796
    goto :goto_c
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1327
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1328
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1329
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1336
    :goto_d
    return-object v3

    .line 1333
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1334
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1335
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1336
    goto :goto_d
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1128
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1129
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1130
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1137
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1134
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1135
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1136
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Bundle"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1137
    goto :goto_d
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3
    .parameter "key"

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 9
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 821
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 822
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_10

    .line 823
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 829
    .end local v2           #o:Ljava/lang/Object;
    :goto_f
    return-object v0

    .line 826
    .restart local v2       #o:Ljava/lang/Object;
    :cond_10
    :try_start_10
    check-cast v2, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_14

    .end local v2           #o:Ljava/lang/Object;
    move-object v0, v2

    goto :goto_f

    .line 827
    .restart local v2       #o:Ljava/lang/Object;
    :catch_14
    move-exception v5

    .line 828
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 829
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_f
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1349
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1350
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1351
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1358
    :goto_d
    return-object v3

    .line 1355
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1356
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1357
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1358
    goto :goto_d
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 3
    .parameter "key"

    .prologue
    .line 841
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 854
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 855
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 862
    :goto_c
    return v1

    .line 859
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 860
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 861
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 862
    goto :goto_c
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1393
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1394
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1395
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1402
    :goto_d
    return-object v3

    .line 1399
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1400
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1401
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1402
    goto :goto_d
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1084
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1085
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1086
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1093
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1090
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1091
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1093
    goto :goto_d
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1107
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1108
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_d

    move-object v2, p2

    .line 1115
    .end local v1           #o:Ljava/lang/Object;
    :goto_c
    return-object v2

    .line 1112
    .restart local v1       #o:Ljava/lang/Object;
    :cond_d
    :try_start_d
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_11

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_c

    .line 1113
    .restart local v1       #o:Ljava/lang/Object;
    :catch_11
    move-exception v0

    .line 1114
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, p2

    .line 1115
    goto :goto_c
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1525
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1526
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1527
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1534
    :goto_d
    return-object v3

    .line 1531
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1532
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1533
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1534
    goto :goto_d
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1305
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1306
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1307
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1314
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1311
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1312
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1313
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<CharSequence>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1314
    goto :goto_d
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .parameter "key"

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1007
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 11
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1019
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1020
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move-wide v1, p2

    .line 1027
    :goto_c
    return-wide v1

    .line 1024
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result-wide v1

    goto :goto_c

    .line 1025
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 1026
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 1027
    goto :goto_c
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1481
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1482
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1483
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1490
    :goto_d
    return-object v3

    .line 1487
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1488
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1489
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1490
    goto :goto_d
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .parameter "key"

    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 986
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 987
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 994
    :goto_c
    return v1

    .line 991
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 992
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 993
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 994
    goto :goto_c
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1459
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1460
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1461
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1468
    :goto_d
    return-object v3

    .line 1465
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1466
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1467
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1468
    goto :goto_d
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1551
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1552
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1553
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1560
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1557
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1558
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1559
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "IBinder"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1560
    goto :goto_d
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 919
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 920
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 921
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 928
    :goto_c
    return v1

    .line 925
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 926
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 927
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 928
    goto :goto_c
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1415
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1416
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1417
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1424
    :goto_d
    return-object v3

    .line 1421
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1422
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1423
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1424
    goto :goto_d
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1261
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1262
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1263
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1270
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1267
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1268
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1270
    goto :goto_d
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .parameter "key"

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 941
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 11
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 952
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 953
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 954
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move-wide v1, p2

    .line 961
    :goto_c
    return-wide v1

    .line 958
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result-wide v1

    goto :goto_c

    .line 959
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 960
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 961
    goto :goto_c
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1437
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1438
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1439
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1446
    :goto_d
    return-object v3

    .line 1443
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1444
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1445
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1446
    goto :goto_d
.end method

.method public getPairValue()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 157
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 158
    .local v2, size:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_14

    .line 159
    const-string v3, "Bundle"

    const-string v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_14
    if-nez v2, :cond_18

    move-object v3, v5

    .line 169
    :goto_17
    return-object v3

    .line 164
    :cond_18
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, o:Ljava/lang/Object;
    :try_start_26
    check-cast v1, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_28} :catch_2a

    .end local v1           #o:Ljava/lang/Object;
    move-object v3, v1

    goto :goto_17

    .line 167
    .restart local v1       #o:Ljava/lang/Object;
    :catch_2a
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "getPairValue()"

    const-string v4, "String"

    invoke-direct {p0, v3, v1, v4, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v5

    .line 169
    goto :goto_17
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1150
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1151
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1152
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1159
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1156
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/Parcelable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1157
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1158
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Parcelable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1159
    goto :goto_d
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1172
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1173
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1174
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1181
    :goto_d
    return-object v3

    .line 1178
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1179
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1180
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1181
    goto :goto_d
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1194
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1195
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1196
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1203
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1200
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1201
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1202
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1203
    goto :goto_d
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1239
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1240
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1241
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1248
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1245
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/io/Serializable;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1246
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1247
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Serializable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1248
    goto :goto_d
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 3
    .parameter "key"

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 887
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 888
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_d

    move v1, p2

    .line 895
    :goto_c
    return v1

    .line 892
    :cond_d
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 893
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 894
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 895
    goto :goto_c
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1371
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1372
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1373
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1380
    :goto_d
    return-object v3

    .line 1377
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1378
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1379
    .local v1, e:Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1380
    goto :goto_d
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1217
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1218
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1219
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1226
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1223
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/util/SparseArray;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1224
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1225
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "SparseArray"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1226
    goto :goto_d
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1040
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1041
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1042
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1049
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1046
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1047
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1048
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1049
    goto :goto_d
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1063
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1064
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_d

    move-object v2, p2

    .line 1071
    .end local v1           #o:Ljava/lang/Object;
    :goto_c
    return-object v2

    .line 1068
    .restart local v1       #o:Ljava/lang/Object;
    :cond_d
    :try_start_d
    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_11

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_c

    .line 1069
    .restart local v1       #o:Ljava/lang/Object;
    :catch_11
    move-exception v0

    .line 1070
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, p2

    .line 1071
    goto :goto_c
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1503
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1504
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1505
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_e

    move-object v3, v4

    .line 1512
    :goto_d
    return-object v3

    .line 1509
    :cond_e
    :try_start_e
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_d

    .line 1510
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1511
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1512
    goto :goto_d
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1283
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1284
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1285
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v2, v3

    .line 1292
    .end local v1           #o:Ljava/lang/Object;
    :goto_d
    return-object v2

    .line 1289
    .restart local v1       #o:Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Ljava/util/ArrayList;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_12

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_d

    .line 1290
    .restart local v1       #o:Ljava/lang/Object;
    :catch_12
    move-exception v0

    .line 1291
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1292
    goto :goto_d
.end method

.method public hasFileDescriptors()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 310
    iget-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v8, :cond_17

    .line 311
    const/4 v3, 0x0

    .line 313
    .local v3, fdFound:Z
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v8, :cond_1a

    .line 314
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 315
    const/4 v3, 0x1

    .line 366
    :cond_13
    :goto_13
    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 367
    iput-boolean v9, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 369
    .end local v3           #fdFound:Z
    :cond_17
    iget-boolean v8, p0, Landroid/os/Bundle;->mHasFds:Z

    return v8

    .line 319
    .restart local v3       #fdFound:Z
    :cond_1a
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 320
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_24
    :goto_24
    if-nez v3, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 322
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Landroid/os/Parcelable;

    if-eqz v8, :cond_46

    .line 323
    check-cast v6, Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_24

    .line 325
    const/4 v3, 0x1

    .line 326
    goto :goto_13

    .line 328
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_46
    instance-of v8, v6, [Landroid/os/Parcelable;

    if-eqz v8, :cond_64

    .line 329
    check-cast v6, [Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Landroid/os/Parcelable;

    move-object v1, v0

    .line 330
    .local v1, array:[Landroid/os/Parcelable;
    array-length v8, v1

    sub-int v5, v8, v9

    .local v5, n:I
    :goto_53
    if-ltz v5, :cond_24

    .line 331
    aget-object v8, v1, v5

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_61

    .line 333
    const/4 v3, 0x1

    .line 334
    goto :goto_24

    .line 330
    :cond_61
    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    .line 337
    .end local v1           #array:[Landroid/os/Parcelable;
    .end local v5           #n:I
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_64
    instance-of v8, v6, Landroid/util/SparseArray;

    if-eqz v8, :cond_87

    .line 338
    move-object v0, v6

    check-cast v0, Landroid/util/SparseArray;

    move-object v2, v0

    .line 340
    .local v2, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_72
    if-ltz v5, :cond_24

    .line 341
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_84

    .line 343
    const/4 v3, 0x1

    .line 344
    goto :goto_24

    .line 340
    :cond_84
    add-int/lit8 v5, v5, -0x1

    goto :goto_72

    .line 347
    .end local v2           #array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5           #n:I
    :cond_87
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_24

    .line 348
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 351
    .local v1, array:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_24

    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_a4
    if-ltz v5, :cond_24

    .line 354
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 355
    .local v7, p:Landroid/os/Parcelable;
    if-eqz v7, :cond_b9

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b9

    .line 357
    const/4 v3, 0x1

    .line 358
    goto/16 :goto_24

    .line 353
    :cond_b9
    add-int/lit8 v5, v5, -0x1

    goto :goto_a4
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 235
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 303
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .registers 4
    .parameter "map"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 288
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 289
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 293
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 294
    return-void

    .line 293
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 381
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 606
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 726
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 393
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 618
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 405
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 642
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 489
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 714
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 582
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 465
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 690
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 453
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 678
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 742
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 429
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 654
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 558
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 441
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 666
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 501
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 503
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 515
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 517
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 530
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 532
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 594
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 417
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 630
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 545
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 547
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 477
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 702
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 570
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "parcel"

    .prologue
    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1620
    .local v0, length:I
    if-gez v0, :cond_1f

    .line 1621
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1623
    :cond_1f
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1624
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 11
    .parameter "parcel"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1628
    .local v0, magic:I
    const v4, 0x4c444e42

    if-eq v0, v4, :cond_34

    .line 1630
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1631
    .local v3, st:Ljava/lang/String;
    const-string v4, "Bundle"

    const-string/jumbo v5, "readBundle: bad magic number"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const-string v4, "Bundle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readBundle: trace = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v3           #st:Ljava/lang/String;
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1637
    .local v1, offset:I
    add-int v4, v1, p2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1640
    .local v2, p:Landroid/os/Parcel;
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1641
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1642
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1644
    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1645
    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v4

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 1646
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 1647
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 278
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .parameter "loader"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 181
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 227
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1651
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_26

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_46

    move-result-object v0

    .line 1655
    :goto_24
    monitor-exit p0

    return-object v0

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_46

    move-result-object v0

    goto :goto_24

    .line 1651
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .registers 5

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v1, :cond_7

    .line 218
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 208
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, N:I
    if-ltz v0, :cond_5

    .line 212
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 215
    :cond_1a
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 216
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_5

    .line 204
    .end local v0           #N:I
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const v4, 0x4c444e42

    .line 1592
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_1a

    .line 1593
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1594
    .local v0, length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1611
    :goto_19
    return-void

    .line 1598
    .end local v0           #length:I
    :cond_1a
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1602
    .local v2, oldPos:I
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1603
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1606
    .local v1, newPos:I
    const/16 v3, 0x8

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1607
    sub-int v0, v1, v2

    .line 1608
    .restart local v0       #length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_19
.end method
