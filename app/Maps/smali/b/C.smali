.class public Lb/C;
.super Lb/b;


# static fields
.field public static final a:Lb/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/C;

    invoke-direct {v0}, Lb/C;-><init>()V

    sput-object v0, Lb/C;->a:Lb/C;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected W()V
    .locals 3

    iget-object v0, p0, Lb/C;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/C;->h:Lb/p;

    sget-object v1, Lb/c;->a:Lb/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "WAIT_FOR_LOCATION"

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/C;->d:Lcom/google/android/maps/driveabout/app/e;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->a(I)V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lb/C;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/C;->h:Lb/p;

    sget-object v1, Lb/c;->a:Lb/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method
