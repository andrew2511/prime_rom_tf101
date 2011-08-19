.class public Lcom/skyhookwireless/wps/_sdklc;
.super Ljava/lang/Thread;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/_sdke;


# direct methods
.method public constructor <init>(Lcom/skyhookwireless/wps/_sdke;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdklc;->_sdka:Lcom/skyhookwireless/wps/_sdke;

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdklc;->_sdka:Lcom/skyhookwireless/wps/_sdke;

    invoke-interface {v0}, Lcom/skyhookwireless/wps/_sdke;->abort()V

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdklc;->interrupt()V

    invoke-static {}, Lcom/skyhookwireless/wps/_sdklc;->interrupted()Z

    return-void
.end method
