.class abstract Lh/fb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic b:Lh/fQ;


# direct methods
.method private constructor <init>(Lh/fQ;)V
    .locals 0

    iput-object p1, p0, Lh/fb;->b:Lh/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/fQ;Lh/aP;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fb;-><init>(Lh/fQ;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lh/fb;->b(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected abstract b(IILandroid/content/Intent;)V
.end method
