.class Lg/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lg/c;

.field private b:Ly/j;

.field private c:Ljava/lang/Exception;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Lg/c;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/d;->a:Lg/c;

    iput-wide p2, p0, Lg/d;->d:J

    iput-wide p4, p0, Lg/d;->e:J

    const/4 v0, 0x4

    iput v0, p0, Lg/d;->f:I

    return-void
.end method

.method public constructor <init>(Lg/c;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/d;->a:Lg/c;

    iput-object p2, p0, Lg/d;->c:Ljava/lang/Exception;

    const/4 v0, 0x3

    iput v0, p0, Lg/d;->f:I

    return-void
.end method

.method public constructor <init>(Lg/c;Ly/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/d;->a:Lg/c;

    iput-object p2, p0, Lg/d;->b:Ly/j;

    const/4 v0, 0x2

    iput v0, p0, Lg/d;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lg/d;->a:Lg/c;

    invoke-virtual {v0}, Lg/c;->a()Lg/h;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lg/d;->f:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lg/d;->a:Lg/c;

    invoke-interface {v0, v1}, Lg/h;->a(Lg/c;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lg/d;->a:Lg/c;

    iget-object v2, p0, Lg/d;->b:Ly/j;

    invoke-interface {v0, v1, v2}, Lg/h;->a(Lg/c;Ly/j;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lg/d;->a:Lg/c;

    iget-object v2, p0, Lg/d;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lg/h;->a(Lg/c;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lg/d;->a:Lg/c;

    iget-wide v2, p0, Lg/d;->d:J

    iget-wide v4, p0, Lg/d;->e:J

    invoke-interface/range {v0 .. v5}, Lg/h;->a(Lg/c;JJ)V

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
