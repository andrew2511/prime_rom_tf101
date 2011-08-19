.class public Lt/f;
.super Lt/aD;


# static fields
.field private static final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lt/f;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lak/h;ILjava/util/Locale;Ljava/io/File;)V
    .locals 13

    const-string v2, "rgts"

    const/4 v4, 0x0

    const/16 v5, 0x100

    sget-object v6, Lt/f;->h:Ljava/util/List;

    const/4 v7, 0x1

    const/16 v8, 0x18

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lt/aD;-><init>(Lak/h;Ljava/lang/String;IIILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    return-void
.end method


# virtual methods
.method protected a()Lt/l;
    .locals 1

    new-instance v0, Lt/O;

    invoke-direct {v0, p0}, Lt/O;-><init>(Lt/f;)V

    return-object v0
.end method
