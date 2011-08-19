.class Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/lang/annotation/AnnotationFactory;->equals(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/lang/annotation/AnnotationFactory;

.field final synthetic val$el:Lorg/apache/harmony/lang/annotation/AnnotationMember;


# direct methods
.method constructor <init>(Lorg/apache/harmony/lang/annotation/AnnotationFactory;Lorg/apache/harmony/lang/annotation/AnnotationMember;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;->this$0:Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    iput-object p2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;->val$el:Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory$1;->val$el:Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iget-object v0, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 223
    :goto_8
    const/4 v0, 0x0

    return-object v0

    .line 222
    :catch_a
    move-exception v0

    goto :goto_8
.end method
