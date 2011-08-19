.class final LaU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:LaO;

.field private b:LaH;

.field private c:Ljava/lang/Exception;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(LaO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaU;->a:LaO;

    const/4 v0, 0x1

    iput v0, p0, LaU;->f:I

    return-void
.end method

.method public constructor <init>(LaO;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaU;->a:LaO;

    iput-wide p2, p0, LaU;->d:J

    iput-wide p4, p0, LaU;->e:J

    const/4 v0, 0x4

    iput v0, p0, LaU;->f:I

    return-void
.end method

.method public constructor <init>(LaO;LaH;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaU;->a:LaO;

    iput-object p2, p0, LaU;->b:LaH;

    const/4 v0, 0x2

    iput v0, p0, LaU;->f:I

    return-void
.end method

.method public constructor <init>(LaO;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaU;->a:LaO;

    iput-object p2, p0, LaU;->c:Ljava/lang/Exception;

    const/4 v0, 0x3

    iput v0, p0, LaU;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LaU;->a:LaO;

    invoke-virtual {v0}, LaO;->d()LaP;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, LaU;->f:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, LaP;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, LaU;->b:LaH;

    invoke-interface {v0, v1}, LaP;->a(LaH;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, LaU;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1}, LaP;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_3
    iget-wide v1, p0, LaU;->d:J

    iget-wide v3, p0, LaU;->e:J

    invoke-interface {v0, v1, v2, v3, v4}, LaP;->a(JJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
