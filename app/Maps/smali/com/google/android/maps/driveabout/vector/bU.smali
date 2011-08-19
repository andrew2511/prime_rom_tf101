.class public Lcom/google/android/maps/driveabout/vector/bU;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/android/maps/driveabout/vector/bU;


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/vector/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:[Lcom/google/android/maps/driveabout/vector/p;

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/p;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bU;->b:[Lcom/google/android/maps/driveabout/vector/p;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/bU;->b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/u;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bU;->a:Lcom/google/android/maps/driveabout/vector/bU;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v0, p6}, Lcom/google/android/maps/driveabout/vector/p;->a(Z)V

    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/vector/p;->b(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    if-eqz p5, :cond_1

    if-eqz p8, :cond_0

    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/p;->d(Landroid/content/res/Resources;I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:[Lcom/google/android/maps/driveabout/vector/p;

    aput-object v0, v1, p3

    return-void

    :cond_0
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/p;->c(Landroid/content/res/Resources;I)V

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/p;->b(Landroid/content/res/Resources;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:[Lcom/google/android/maps/driveabout/vector/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 9

    const/4 v3, 0x0

    const v4, 0x7f020146

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x1

    const v4, 0x7f020149

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x2

    const v4, 0x7f02014b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x3

    const v4, 0x7f02014d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x4

    const v4, 0x7f02014f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x5

    const v4, 0x7f02014a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x6

    const v4, 0x7f02014c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x16

    const v4, 0x7f02014e

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/4 v3, 0x7

    const v4, 0x7f020155

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x15

    const v4, 0x7f020154

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x8

    const v4, 0x7f020156

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x9

    const v4, 0x7f020157

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0xa

    const v4, 0x7f020158

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0x14

    const v4, 0x7f020140

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    const/16 v3, 0xb

    const v4, 0x7f020159

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/content/res/Resources;IIZZZZ)V

    return-void
.end method
