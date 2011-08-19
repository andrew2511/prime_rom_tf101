.class public abstract Lcom/skyhookwireless/_sdkcb;
.super Ljava/lang/Object;


# static fields
.field private static _sdkb:Lcom/skyhookwireless/_sdkg;

.field private static _sdkc:Lcom/skyhookwireless/_sdkcb;

.field public static _sdkd:I

.field private static final z:[Ljava/lang/String;


# instance fields
.field protected final _sdka:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*)-w)i;&$}9:,$2=135."

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->z(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->z([C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "i<+\"9t"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0014h"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "i\u0013"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkcb;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->z:[Ljava/lang/String;

    sget-object v0, Lcom/skyhookwireless/_sdkg;->NONE:Lcom/skyhookwireless/_sdkg;

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkb:Lcom/skyhookwireless/_sdkg;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    invoke-static {}, Lcom/skyhookwireless/_sdkg;->values()[Lcom/skyhookwireless/_sdkg;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkg;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\r\u0001\u0005\u001a"

    invoke-static {v5}, Lcom/skyhookwireless/_sdkcb;->z(Ljava/lang/String;)[C

    move-result-object v5

    invoke-static {v5}, Lcom/skyhookwireless/_sdkcb;->z([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput-object v3, Lcom/skyhookwireless/_sdkcb;->_sdkb:Lcom/skyhookwireless/_sdkg;

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdkhb;->_sdka:[I

    sget-object v1, Lcom/skyhookwireless/_sdkl;->loggerType:Lcom/skyhookwireless/_sdkf;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/skyhookwireless/_sdkeb;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkeb;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/skyhookwireless/_sdkfb;

    const-class v1, Lcom/skyhookwireless/_sdkcb;

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkfb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/skyhookwireless/_sdkdb;

    const-class v1, Lcom/skyhookwireless/_sdkcb;

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkdb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/skyhookwireless/_sdkgb;

    const-class v1, Lcom/skyhookwireless/_sdkcb;

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkgb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkcb;->_sdka:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkeb;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkcb;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkcb;->_sdka:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized _sdka(Lcom/skyhookwireless/_sdkcb;)V
    .locals 4

    const-class v0, Lcom/skyhookwireless/_sdkcb;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    sget-object v2, Lcom/skyhookwireless/_sdkcb;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized _sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/skyhookwireless/_sdkcb;"
        }
    .end annotation

    const-class v0, Lcom/skyhookwireless/_sdkcb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/skyhookwireless/_sdkcb;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1, p0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final _sdkb(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/skyhookwireless/_sdkcb;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkcb;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkcb;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkcb;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static z([C)Ljava/lang/String;
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    move v2, v1

    move v1, v0

    move-object v0, p0

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x5d

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x49

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x48

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x43

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x50

    goto :goto_1

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v1

    move v1, v0

    move-object v0, p0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static z(Ljava/lang/String;)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    :goto_0
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x5d

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_0
    move-object v0, v1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract _sdka(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/skyhookwireless/_sdkcb;"
        }
    .end annotation
.end method

.method protected abstract _sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)V
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Lcom/skyhookwireless/_sdkg;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    throw v1
.end method

.method public final _sdka(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkg;->TRACE:Lcom/skyhookwireless/_sdkg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final _sdka(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->TRACE:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _sdka()Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->TRACE:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkg;)Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkcb;->_sdkb:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/_sdkg;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/skyhookwireless/_sdkib;->_sdkb(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final _sdkb(Lcom/skyhookwireless/_sdkg;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkd;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/_sdkd;-><init>(Lcom/skyhookwireless/_sdkcb;Lcom/skyhookwireless/_sdkg;)V

    return-object v0
.end method

.method public final _sdkb(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final _sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _sdkb()Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->DEBUG:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method

.method public final _sdkc(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkg;->INFO:Lcom/skyhookwireless/_sdkg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final _sdkc(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->INFO:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _sdkc()Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->INFO:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method

.method public final _sdkd(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkg;->WARN:Lcom/skyhookwireless/_sdkg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final _sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->WARN:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _sdkd()Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->WARN:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method

.method public final _sdke(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkg;->ERROR:Lcom/skyhookwireless/_sdkg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final _sdke(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->ERROR:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0, p1, p2}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _sdke()Z
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdkg;->ERROR:Lcom/skyhookwireless/_sdkg;

    invoke-virtual {p0, v0}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;)Z

    move-result v0

    return v0
.end method
