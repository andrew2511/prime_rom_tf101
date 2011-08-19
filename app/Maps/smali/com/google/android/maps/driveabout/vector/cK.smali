.class public Lcom/google/android/maps/driveabout/vector/cK;
.super Lcom/google/android/maps/driveabout/vector/ae;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bN;


# instance fields
.field private final d:LG/Y;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;LG/Y;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/vector/cK;->c(Z)V

    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/cK;->d:LG/Y;

    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/cK;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public p()LG/Y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cK;->d:LG/Y;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cK;->e:Ljava/lang/String;

    return-object v0
.end method
