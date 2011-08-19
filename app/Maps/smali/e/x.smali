.class Le/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Le/j;


# direct methods
.method constructor <init>(Le/j;)V
    .locals 0

    iput-object p1, p0, Le/x;->a:Le/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Le/x;->a:Le/j;

    invoke-static {v0, p1}, Le/j;->a(Le/j;Landroid/os/Message;)V

    return-void
.end method
