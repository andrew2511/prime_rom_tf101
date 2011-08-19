.class Lorg/apache/xml/serializer/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/SecuritySupport12;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/serializer/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/SecuritySupport12;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/xml/serializer/SecuritySupport12$3;->this$0:Lorg/apache/xml/serializer/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xml/serializer/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, parent:Ljava/lang/ClassLoader;
    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_f

    move-result-object v0

    .line 79
    :goto_7
    iget-object v1, p0, Lorg/apache/xml/serializer/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    move-object v1, v0

    goto :goto_c

    .line 75
    :catch_f
    move-exception v1

    goto :goto_7
.end method
