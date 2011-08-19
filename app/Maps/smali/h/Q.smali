.class Lh/Q;
.super Lo/f;


# instance fields
.field final synthetic a:Lh/bM;

.field final synthetic b:Ljava/util/Vector;

.field final synthetic c:Lh/aD;


# direct methods
.method constructor <init>(Lh/aD;Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;Lh/bM;Ljava/util/Vector;)V
    .locals 11

    iput-object p1, p0, Lh/Q;->c:Lh/aD;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lh/Q;->a:Lh/bM;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lh/Q;->b:Ljava/util/Vector;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lo/f;-><init>(Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    invoke-super {p0}, Lo/f;->i_()V

    iget-object v0, p0, Lh/Q;->a:Lh/bM;

    iget-object v1, p0, Lh/Q;->b:Ljava/util/Vector;

    invoke-interface {v0, v1}, Lh/bM;->a(Ljava/util/Vector;)V

    return-void
.end method
