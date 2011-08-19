.class Lcom/google/googlenav/ui/wizard/android/c;
.super Lo/f;


# instance fields
.field final synthetic a:Lh/cE;

.field final synthetic b:Ljava/util/Vector;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/android/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/o;Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;Lh/cE;Ljava/util/Vector;)V
    .locals 11

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/c;->c:Lcom/google/googlenav/ui/wizard/android/o;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/android/c;->a:Lh/cE;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/android/c;->b:Ljava/util/Vector;

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
.method public a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lo/f;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/c;->a:Lh/cE;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/android/c;->b:Ljava/util/Vector;

    invoke-interface {v0, v1, v2}, Lh/cE;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method
