.class public LaJ/a;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/c;


# instance fields
.field private final a:LaJ/c;


# direct methods
.method public constructor <init>(LaJ/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaJ/a;->a:LaJ/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, LaJ/a;->a:LaJ/c;

    invoke-interface {v0, p1, p2}, LaJ/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
