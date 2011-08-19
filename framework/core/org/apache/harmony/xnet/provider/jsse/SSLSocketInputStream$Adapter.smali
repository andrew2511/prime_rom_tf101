.class Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;
.super Ljava/lang/Object;
.source "SSLSocketInputStream.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)V

    return-void
.end method


# virtual methods
.method public append([B)V
    .registers 9
    .parameter "src"

    .prologue
    const/16 v3, 0x4000

    const/4 v6, 0x0

    .line 156
    array-length v0, p1

    .line 157
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v3, v1

    if-ge v1, v0, :cond_24

    .line 166
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x50

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Could not accept income app data."

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 169
    :cond_24
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v3, :cond_5f

    .line 171
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$300(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$300(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I
    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$120(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I

    .line 173
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #setter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I
    invoke-static {v1, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$202(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I

    .line 175
    :cond_5f
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$300(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v2

    invoke-static {p1, v6, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;->this$0:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I

    move-result v2

    add-int/2addr v2, v0

    #setter for: Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I
    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->access$102(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I

    .line 177
    return-void
.end method
