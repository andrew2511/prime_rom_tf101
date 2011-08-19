.class Lcom/google/googlenav/networkinitiated/i;
.super Lo/an;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/google/googlenav/networkinitiated/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/networkinitiated/f;Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJLandroid/location/Location;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/networkinitiated/i;->b:Lcom/google/googlenav/networkinitiated/f;

    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/networkinitiated/i;->a:Landroid/location/Location;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    invoke-direct/range {v2 .. v18}, Lo/an;-><init>(Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)Z
    .locals 3

    invoke-super {p0, p1}, Lo/an;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/i;->b:Lcom/google/googlenav/networkinitiated/f;

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/i;->a:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/networkinitiated/f;->c(Landroid/location/Location;)V

    :cond_0
    return v0
.end method
