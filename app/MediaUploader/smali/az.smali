.class public final Laz;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/atom+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/binary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "multipart/alternative"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "multipart/mixed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multipart/related"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    sput-object v0, Laz;->a:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Laz;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x61t 0x61t 0x0t 0x0t
        0x62t 0x61t 0x0t 0x0t
        0x6at 0x69t 0x0t 0x0t
        0x70t 0x69t 0x0t 0x0t
        0x61t 0x6dt 0x0t 0x0t
        0x6dt 0x6dt 0x0t 0x0t
        0x72t 0x6dt 0x0t 0x0t
        0x70t 0x74t 0x0t 0x0t
        0x78t 0x74t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laz;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Laz;->b:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Laz;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    move v2, v4

    :goto_1
    sget-object v3, Laz;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Laz;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Laz;->b:[I

    aget v0, v0, v2

    :goto_2
    if-lez v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    const-string v0, ""

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p2, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method
