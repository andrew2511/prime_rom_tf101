.class public abstract Lac/m;
.super Ljava/lang/Object;


# static fields
.field public static A:Z

.field public static B:I

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static a:Lac/m;

.field private static b:[I

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field protected static r:I

.field protected static s:I

.field protected static t:I

.field protected static u:I

.field protected static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:Z


# instance fields
.field private E:Ljava/lang/String;

.field private F:Lac/e;

.field private final G:Lac/p;

.field private final H:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x270f

    sput v0, Lac/m;->f:I

    sput v0, Lac/m;->g:I

    sput v0, Lac/m;->h:I

    sput v0, Lac/m;->i:I

    sput v0, Lac/m;->j:I

    sput v0, Lac/m;->k:I

    sput v0, Lac/m;->l:I

    sput v0, Lac/m;->m:I

    sput v0, Lac/m;->n:I

    sput v0, Lac/m;->o:I

    sput v0, Lac/m;->p:I

    sput v0, Lac/m;->q:I

    sput v0, Lac/m;->r:I

    sput v0, Lac/m;->s:I

    sput v0, Lac/m;->t:I

    sput v0, Lac/m;->u:I

    const/4 v0, 0x0

    sput-boolean v0, Lac/m;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lac/m;->E:Ljava/lang/String;

    new-instance v0, Lac/o;

    invoke-direct {v0}, Lac/o;-><init>()V

    iput-object v0, p0, Lac/m;->G:Lac/p;

    iget-object v0, p0, Lac/m;->G:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lac/m;->H:J

    return-void
.end method

.method public static declared-synchronized D()Ljava/lang/String;
    .locals 2

    const-class v0, Lac/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lac/m;->a:Lac/m;

    iget-object v1, v1, Lac/m;->F:Lac/e;

    invoke-virtual {v1}, Lac/e;->c()Ljava/lang/String;
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

.method public static declared-synchronized E()Ljava/lang/String;
    .locals 2

    const-class v0, Lac/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lac/m;->a:Lac/m;

    iget-object v1, v1, Lac/m;->F:Lac/e;

    invoke-virtual {v1}, Lac/e;->b()Ljava/lang/String;
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

.method public static G()Ljava/lang/String;
    .locals 1

    sget-object v0, Lac/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static K()Z
    .locals 1

    sget-object v0, Lac/m;->a:Lac/m;

    iget-object v0, v0, Lac/m;->F:Lac/e;

    invoke-virtual {v0}, Lac/e;->e()Z

    move-result v0

    return v0
.end method

.method public static L()Z
    .locals 2

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lac/m;)V
    .locals 0

    sput-object p0, Lac/m;->a:Lac/m;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lac/m;->a(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lac/m;->v:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lac/m;->r:I

    aget v1, v0, v2

    sput v1, Lac/m;->t:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lac/m;->s:I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lac/m;->u:I

    :cond_0
    return-void
.end method

.method private static a(ILjava/lang/String;)[I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-array v0, p0, [I

    move v2, v1

    :goto_1
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lac/m;->a:Lac/m;

    iget-object v0, v0, Lac/m;->F:Lac/e;

    invoke-virtual {v0, p0, p1, p2}, Lac/e;->a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lac/m;->a:Lac/m;

    iget-object v0, v0, Lac/m;->F:Lac/e;

    invoke-virtual {v0, p0}, Lac/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lac/m;->a(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lac/m;->b:[I

    return-void
.end method

.method public static y()Lac/m;
    .locals 1

    sget-object v0, Lac/m;->a:Lac/m;

    return-object v0
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lac/m;->F:Lac/e;

    invoke-virtual {v0}, Lac/e;->d()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    sget-boolean v0, Lac/m;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lac/m;->a()Z

    move-result v0

    sput-boolean v0, Lac/m;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lac/m;->c:Z

    :cond_0
    sget-boolean v0, Lac/m;->d:Z

    return v0
.end method

.method protected F()Lac/e;
    .locals 1

    iget-object v0, p0, Lac/m;->F:Lac/e;

    return-object v0
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J()Z
    .locals 2

    sget v0, Lac/m;->f:I

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 2

    invoke-virtual {p0}, Lac/m;->m()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()LaJ/c;
    .locals 1

    new-instance v0, LaJ/d;

    invoke-direct {v0}, LaJ/d;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public abstract a(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lac/m;->F:Lac/e;

    invoke-virtual {v0, p1}, Lac/e;->a([Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a()Z
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method public c(I)I
    .locals 4

    int-to-double v0, p1

    invoke-virtual {p0}, Lac/m;->t()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, LA/h;->a(D)I

    move-result v0

    return v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Lk/q;
.end method

.method public abstract g()Ln/a;
.end method

.method public i()Lac/v;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown"

    return-object v0
.end method

.method protected abstract l()V
.end method

.method public abstract m()I
.end method

.method public p()Lac/p;
    .locals 1

    iget-object v0, p0, Lac/m;->G:Lac/p;

    return-object v0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Lac/m;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t()D
    .locals 4

    invoke-virtual {p0}, Lac/m;->m()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4064

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract w()Lk/i;
.end method

.method public abstract x()Ln/b;
.end method

.method protected z()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lac/m;->F:Lac/e;

    if-nez v0, :cond_0

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/e;->a(Ljava/lang/String;)Lac/e;

    move-result-object v0

    iput-object v0, p0, Lac/m;->F:Lac/e;

    :cond_0
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lac/m;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lac/m;->e:Ljava/lang/String;

    sget-object v1, Lac/m;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "unknown"

    sput-object v1, Lac/m;->e:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lac/m;->A()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lac/m;->C:Ljava/lang/String;

    sget-object v1, Lac/m;->C:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "unknown"

    sput-object v1, Lac/m;->C:Ljava/lang/String;

    :cond_2
    const-string v1, "Carrier"

    invoke-virtual {p0, v1}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lac/m;->D:Ljava/lang/String;

    sget-object v1, Lac/m;->D:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "unknown"

    sput-object v1, Lac/m;->D:Ljava/lang/String;

    :cond_3
    const-string v1, "BackKey"

    sget v2, Lac/m;->f:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->f:I

    const-string v1, "LeftSoftKey"

    sget v2, Lac/m;->g:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->g:I

    const-string v1, "MiddleSoftKey"

    sget v2, Lac/m;->h:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->h:I

    const-string v1, "RightSoftKey"

    sget v2, Lac/m;->i:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->i:I

    const-string v1, "ReverseSoftkeys"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lac/m;->x:Z

    const-string v1, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v1, v3}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lac/m;->y:Z

    const-string v1, "SideUpKey"

    sget v2, Lac/m;->o:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->o:I

    const-string v1, "SideDownKey"

    sget v2, Lac/m;->p:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->p:I

    const-string v1, "SideSelectKey"

    sget v2, Lac/m;->q:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->q:I

    const-string v1, "QwertyKeyboard"

    invoke-virtual {p0, v1, v3}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lac/m;->z:Z

    sget-boolean v1, Lac/m;->x:Z

    if-eqz v1, :cond_4

    sget v1, Lac/m;->g:I

    sget v2, Lac/m;->i:I

    sput v2, Lac/m;->g:I

    sput v1, Lac/m;->i:I

    :cond_4
    const-string v1, "MenuKey"

    sget v2, Lac/m;->j:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->j:I

    const-string v1, "SelectKey"

    sget v2, Lac/m;->k:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->k:I

    const-string v1, "TalkKey"

    sget v2, Lac/m;->l:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->l:I

    const-string v1, "VoiceSearchKey"

    sget v2, Lac/m;->m:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->m:I

    const-string v1, "ClearKey"

    sget v2, Lac/m;->n:I

    invoke-virtual {p0, v1, v2}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lac/m;->n:I

    const-string v1, "UseNativeCommands"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    :goto_1
    invoke-virtual {p0, v1, v0}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lac/m;->w:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v3}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lac/m;->A:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v3}, Lac/m;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lac/m;->B:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/m;->b(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Lac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/m;->a(Ljava/lang/String;)V

    sget-boolean v0, Lac/m;->A:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lac/m;->w:Z

    if-nez v0, :cond_5

    sput-boolean v4, Lac/m;->w:Z

    :cond_5
    invoke-virtual {p0}, Lac/m;->l()V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_1
.end method
