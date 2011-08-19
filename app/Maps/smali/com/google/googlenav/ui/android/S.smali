.class public Lcom/google/googlenav/ui/android/S;
.super Lcom/google/googlenav/ui/aV;


# static fields
.field public static final a:C

.field public static final b:C

.field private static final bT:Landroid/text/SpannableString;

.field private static final bX:Landroid/graphics/Rect;

.field private static final bY:Landroid/graphics/RectF;


# instance fields
.field private bU:Landroid/content/Context;

.field private bV:Lk/j;

.field private final bW:Landroid/graphics/Paint;

.field private bZ:I

.field private ca:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/google/googlenav/ui/android/S;->bT:Landroid/text/SpannableString;

    sget-char v0, Lcom/google/googlenav/ui/android/S;->g:C

    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    sput-char v1, Lcom/google/googlenav/ui/android/S;->g:C

    sput-char v0, Lcom/google/googlenav/ui/android/S;->a:C

    sget-char v0, Lcom/google/googlenav/ui/android/S;->g:C

    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    sput-char v1, Lcom/google/googlenav/ui/android/S;->g:C

    sput-char v0, Lcom/google/googlenav/ui/android/S;->b:C

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/S;->bX:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/S;->bY:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/aV;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/S;->bW:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/aI;)Landroid/text/style/TextAppearanceSpan;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aI;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;
    .locals 7

    const v6, 0x7f0d003e

    const v5, 0x7f0d0097

    const v4, 0x7f0d003d

    const v3, 0x7f0d0042

    const v2, 0x7f0d003c

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    sget-object v1, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_0

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0055

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/googlenav/ui/av;->e:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/googlenav/ui/av;->f:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/google/googlenav/ui/av;->p:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0053

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/google/googlenav/ui/av;->i:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/google/googlenav/ui/av;->k:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0040

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/google/googlenav/ui/av;->l:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0051

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/google/googlenav/ui/av;->m:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_9

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0052

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/google/googlenav/ui/av;->n:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0050

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0055

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcom/google/googlenav/ui/av;->q:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0056

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/google/googlenav/ui/av;->o:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/google/googlenav/ui/av;->c:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/google/googlenav/ui/av;->s:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_10

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00db

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    sget-object v1, Lcom/google/googlenav/ui/av;->t:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_11

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00dc

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    sget-object v1, Lcom/google/googlenav/ui/av;->u:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_12

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d004d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_13

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0057

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_13
    sget-object v1, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_14

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0058

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_15

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0093

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    sget-object v1, Lcom/google/googlenav/ui/av;->aM:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_16

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0096

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_16
    sget-object v1, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_17

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0094

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_17
    sget-object v1, Lcom/google/googlenav/ui/av;->aO:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_18

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0095

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_18
    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_19

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_19
    sget-object v1, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0098

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1a
    sget-object v1, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0099

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1b
    sget-object v1, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009a

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1c
    sget-object v1, Lcom/google/googlenav/ui/av;->aS:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009b

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1d
    sget-object v1, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009c

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1e
    sget-object v1, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_1f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1f
    sget-object v1, Lcom/google/googlenav/ui/av;->aW:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_20

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009e

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_20
    sget-object v1, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_21

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a1

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_21
    sget-object v1, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_22

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a2

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_22
    sget-object v1, Lcom/google/googlenav/ui/av;->aZ:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_23

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a3

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_23
    sget-object v1, Lcom/google/googlenav/ui/av;->aY:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_24

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a2

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_24
    sget-object v1, Lcom/google/googlenav/ui/av;->ba:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_25

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_25
    sget-object v1, Lcom/google/googlenav/ui/av;->y:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_26

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_26
    sget-object v1, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_27

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0059

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_27
    sget-object v1, Lcom/google/googlenav/ui/av;->aE:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_28

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0061

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_28
    sget-object v1, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_29

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d005a

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_29
    sget-object v1, Lcom/google/googlenav/ui/av;->F:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d005b

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2a
    sget-object v1, Lcom/google/googlenav/ui/av;->H:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2b
    sget-object v1, Lcom/google/googlenav/ui/av;->I:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0047

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2c
    sget-object v1, Lcom/google/googlenav/ui/av;->J:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0054

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2d
    sget-object v1, Lcom/google/googlenav/ui/av;->G:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0040

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2e
    sget-object v1, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_2f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2f
    sget-object v1, Lcom/google/googlenav/ui/av;->L:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_30

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0044

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_30
    sget-object v1, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_31

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d007a

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_31
    sget-object v1, Lcom/google/googlenav/ui/av;->aH:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_32

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0041

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_32
    sget-object v1, Lcom/google/googlenav/ui/av;->M:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_33

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d005d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_33
    sget-object v1, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_34

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0062

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_34
    sget-object v1, Lcom/google/googlenav/ui/av;->z:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_35

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_35
    sget-object v1, Lcom/google/googlenav/ui/av;->A:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_36

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d005e

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_36
    sget-object v1, Lcom/google/googlenav/ui/av;->B:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_37

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d005f

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_37
    sget-object v1, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_38

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0060

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_38
    sget-object v1, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_39

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0065

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_39
    sget-object v1, Lcom/google/googlenav/ui/av;->O:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0065

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3a
    sget-object v1, Lcom/google/googlenav/ui/av;->P:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3b
    sget-object v1, Lcom/google/googlenav/ui/av;->T:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0064

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3c
    sget-object v1, Lcom/google/googlenav/ui/av;->U:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a4

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3d
    sget-object v1, Lcom/google/googlenav/ui/av;->S:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0063

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3e
    sget-object v1, Lcom/google/googlenav/ui/av;->V:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_3f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3f
    sget-object v1, Lcom/google/googlenav/ui/av;->W:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_40

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_40
    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_41

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0075

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_41
    sget-object v1, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_42

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0076

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_42
    sget-object v1, Lcom/google/googlenav/ui/av;->at:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_43

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0077

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_43
    sget-object v1, Lcom/google/googlenav/ui/av;->au:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_44

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0078

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_44
    sget-object v1, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_45

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0079

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_45
    sget-object v1, Lcom/google/googlenav/ui/av;->ao:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_46

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0049

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_46
    sget-object v1, Lcom/google/googlenav/ui/av;->ap:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_47

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d004a

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_47
    sget-object v1, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_48

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_48
    sget-object v1, Lcom/google/googlenav/ui/av;->aw:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_49

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0072

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_49
    sget-object v1, Lcom/google/googlenav/ui/av;->ax:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0074

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4a
    sget-object v1, Lcom/google/googlenav/ui/av;->ay:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0045

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4b
    sget-object v1, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4c
    sget-object v1, Lcom/google/googlenav/ui/av;->Z:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d008e

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4d
    sget-object v1, Lcom/google/googlenav/ui/av;->aa:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d008f

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4e
    sget-object v1, Lcom/google/googlenav/ui/av;->ab:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_4f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4f
    sget-object v1, Lcom/google/googlenav/ui/av;->ac:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_50

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0068

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_50
    sget-object v1, Lcom/google/googlenav/ui/av;->ad:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_51

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0069

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_51
    sget-object v1, Lcom/google/googlenav/ui/av;->ae:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_52

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006a

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_52
    sget-object v1, Lcom/google/googlenav/ui/av;->aF:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_53

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006b

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_53
    sget-object v1, Lcom/google/googlenav/ui/av;->aA:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_54

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d007d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_54
    sget-object v1, Lcom/google/googlenav/ui/av;->aB:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_55

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d007e

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_55
    sget-object v1, Lcom/google/googlenav/ui/av;->ag:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_56

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d004c

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_56
    sget-object v1, Lcom/google/googlenav/ui/av;->ai:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_57

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006e

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_57
    sget-object v1, Lcom/google/googlenav/ui/av;->ak:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_58

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0070

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_58
    sget-object v1, Lcom/google/googlenav/ui/av;->ah:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_59

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_59
    sget-object v1, Lcom/google/googlenav/ui/av;->af:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006c

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5a
    sget-object v1, Lcom/google/googlenav/ui/av;->aj:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d006f

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5b
    sget-object v1, Lcom/google/googlenav/ui/av;->al:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0071

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5c
    sget-object v1, Lcom/google/googlenav/ui/av;->az:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0075

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5d
    sget-object v1, Lcom/google/googlenav/ui/av;->aI:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0076

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5e
    sget-object v1, Lcom/google/googlenav/ui/av;->aC:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_5f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0086

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5f
    sget-object v1, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_60

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0085

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_60
    sget-object v1, Lcom/google/googlenav/ui/av;->aD:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_61

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_61
    sget-object v1, Lcom/google/googlenav/ui/av;->bm:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_62

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0094

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_62
    sget-object v1, Lcom/google/googlenav/ui/av;->bn:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_63

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0099

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_63
    sget-object v1, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_64

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_64
    sget-object v1, Lcom/google/googlenav/ui/av;->bp:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_65

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a4

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_65
    sget-object v1, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_66

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_66
    sget-object v1, Lcom/google/googlenav/ui/av;->br:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_67

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0098

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_67
    sget-object v1, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_68

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009d

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_68
    sget-object v1, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_69

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d009f

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_69
    sget-object v1, Lcom/google/googlenav/ui/av;->bu:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a0

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6a
    sget-object v1, Lcom/google/googlenav/ui/av;->bv:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6b
    sget-object v1, Lcom/google/googlenav/ui/av;->bw:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0091

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6c
    sget-object v1, Lcom/google/googlenav/ui/av;->bx:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0092

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6d
    sget-object v1, Lcom/google/googlenav/ui/av;->by:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0090

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6e
    sget-object v1, Lcom/google/googlenav/ui/av;->am:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_6f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d007c

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6f
    sget-object v1, Lcom/google/googlenav/ui/av;->bc:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_70

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a5

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_70
    sget-object v1, Lcom/google/googlenav/ui/av;->bb:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_71

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_71
    sget-object v1, Lcom/google/googlenav/ui/av;->bd:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_72

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a6

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_72
    sget-object v1, Lcom/google/googlenav/ui/av;->be:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_73

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a7

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_73
    sget-object v1, Lcom/google/googlenav/ui/av;->bf:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_74

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a8

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_74
    sget-object v1, Lcom/google/googlenav/ui/av;->bj:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_75

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d007f

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_75
    sget-object v1, Lcom/google/googlenav/ui/av;->bz:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_76

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b2

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_76
    sget-object v1, Lcom/google/googlenav/ui/av;->bA:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_77

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b3

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_77
    sget-object v1, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_78

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b5

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_78
    sget-object v1, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_79

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b6

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_79
    sget-object v1, Lcom/google/googlenav/ui/av;->bg:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00a9

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7a
    sget-object v1, Lcom/google/googlenav/ui/av;->bh:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00aa

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7b
    sget-object v1, Lcom/google/googlenav/ui/av;->bi:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00ab

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7c
    sget-object v1, Lcom/google/googlenav/ui/av;->bB:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b7

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7d
    sget-object v1, Lcom/google/googlenav/ui/av;->bC:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b8

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7e
    sget-object v1, Lcom/google/googlenav/ui/av;->bG:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_7f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00bb

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7f
    sget-object v1, Lcom/google/googlenav/ui/av;->bH:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_80

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00bc

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_80
    sget-object v1, Lcom/google/googlenav/ui/av;->bI:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_81

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00bd

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_81
    sget-object v1, Lcom/google/googlenav/ui/av;->bJ:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_82

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00be

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_82
    sget-object v1, Lcom/google/googlenav/ui/av;->bK:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_83

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00bf

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_83
    sget-object v1, Lcom/google/googlenav/ui/av;->bL:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_84

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00c0

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_84
    sget-object v1, Lcom/google/googlenav/ui/av;->bM:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_85

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00c1

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_85
    sget-object v1, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_86

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00ac

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_86
    sget-object v1, Lcom/google/googlenav/ui/av;->bE:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_87

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00ba

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_87
    sget-object v1, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_88

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00b9

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_88
    sget-object v1, Lcom/google/googlenav/ui/av;->bF:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_89

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0048

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_89
    sget-object v1, Lcom/google/googlenav/ui/av;->bk:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8a

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8a
    sget-object v1, Lcom/google/googlenav/ui/av;->bP:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8b

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0043

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8b
    sget-object v1, Lcom/google/googlenav/ui/av;->bQ:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8c

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8c
    sget-object v1, Lcom/google/googlenav/ui/av;->bN:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8d

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00ad

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8d
    sget-object v1, Lcom/google/googlenav/ui/av;->bO:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8e

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00ae

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8e
    sget-object v1, Lcom/google/googlenav/ui/av;->bR:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_8f

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0066

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8f
    sget-object v1, Lcom/google/googlenav/ui/av;->bS:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_90

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0067

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_90
    sget-object v1, Lcom/google/googlenav/ui/av;->bT:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_91

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00d0

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_91
    sget-object v1, Lcom/google/googlenav/ui/av;->bU:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_92

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00d5

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_92
    sget-object v1, Lcom/google/googlenav/ui/av;->bV:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_93

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00d4

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_93
    sget-object v1, Lcom/google/googlenav/ui/av;->bW:Lcom/google/googlenav/ui/av;

    if-ne p0, v1, :cond_94

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00d6

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_94
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, v0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, p0, p1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v1
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    const v8, 0xec00

    const/16 v7, 0x21

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_8

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_1

    if-lt v2, v8, :cond_2

    const v3, 0xecff

    if-gt v2, v3, :cond_2

    :cond_1
    move v1, v6

    :goto_2
    if-nez v1, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v3, v4

    :goto_3
    if-ge v3, v0, :cond_7

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_6

    sub-int v4, v0, v6

    if-ne v3, v4, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v1, v4}, Lk/j;->a(C)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/google/googlenav/ui/android/j;

    invoke-direct {v4, v1}, Lcom/google/googlenav/ui/android/j;-><init>(Lk/j;)V

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    if-lt v4, v8, :cond_4

    invoke-interface {v1, v4}, Lk/j;->a(C)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/google/googlenav/ui/android/j;

    invoke-direct {v4, v1}, Lcom/google/googlenav/ui/android/j;-><init>(Lk/j;)V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_7
    move-object v0, v2

    goto :goto_0

    :cond_8
    move v1, v4

    goto :goto_2
.end method

.method public static varargs a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-ne v0, v1, :cond_2

    aget-object v0, p0, v3

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/android/S;->bT:Landroid/text/SpannableString;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    array-length v0, p0

    if-ne v0, v1, :cond_5

    aget-object v0, p0, v3

    iget-object v1, v0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object v0, Lcom/google/googlenav/ui/android/S;->bT:Landroid/text/SpannableString;

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/text/SpannableString;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/text/SpannableString;

    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/Spannable;II)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, ""

    array-length v2, p0

    move v6, v3

    move-object v3, v1

    move v1, v6

    :goto_2
    if-ge v1, v2, :cond_1

    aget-object v4, p0, v1

    if-nez v4, :cond_6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, v4, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    iget-boolean v3, v4, Lcom/google/googlenav/ui/aI;->d:Z

    if-eqz v3, :cond_8

    const-string v3, ","

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {v4, v0, v5, v3}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/Spannable;II)V

    iget-boolean v3, v4, Lcom/google/googlenav/ui/aI;->c:Z

    if-eqz v3, :cond_9

    const-string v3, "\n"

    goto :goto_3

    :cond_9
    const-string v3, " "

    goto :goto_3
.end method

.method public static a(Landroid/text/Editable;Lcom/google/googlenav/ui/av;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/TextAppearanceSpan;

    invoke-interface {p0, v4, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TextAppearanceSpan;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {p0, v0, v4, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Lax/e;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/M;-><init>(Lcom/google/googlenav/ui/android/t;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/googlenav/ui/android/M;->a(Landroid/view/MenuItem;Lax/e;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/google/googlenav/ui/av;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aI;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/aI;Landroid/text/Spannable;II)V
    .locals 5

    const v4, -0x808081

    const/16 v3, 0x21

    invoke-static {p0}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->ac:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aY:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aS:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aO:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aW:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->aa:Lcom/google/googlenav/ui/av;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->bW:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->bb:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/google/googlenav/ui/android/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/B;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->be:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/google/googlenav/ui/android/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/android/J;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->bf:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/google/googlenav/ui/android/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/android/J;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ui/av;->bk:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/android/H;

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/H;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/Spannable;II)V

    return-void
.end method

.method private as()Lk/j;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bV:Lk/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/Z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020007

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/android/S;->b:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/android/S;->a:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/S;->a(ILjava/lang/String;)Lk/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/S;->bV:Lk/j;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bV:Lk/j;

    return-object v0

    :cond_1
    const v0, 0x7f020006

    goto :goto_0
.end method

.method public static b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/S;->bX:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic j()Landroid/graphics/RectF;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/S;->bY:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bW:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/av;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bW:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 10

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_1

    if-gt v2, v9, :cond_1

    move v2, v7

    :goto_1
    add-int/lit8 v3, v1, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v8, :cond_2

    if-gt v4, v9, :cond_2

    move v4, v7

    :goto_3
    if-eq v4, v2, :cond_3

    :cond_0
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    if-eqz v2, :cond_4

    move v2, p2

    :goto_4
    invoke-direct {v4, v5, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x22

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v2, p3

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->aD:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "UI"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/util/ArrayList;
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/ui/aV;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/S;->as()Lk/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public e()I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/android/S;->ca:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/S;->ab()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/S;->ab()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/S;->ca:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/ui/view/android/P;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0f0249

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/P;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/google/googlenav/ui/android/S;->bZ:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/googlenav/ui/android/S;->bZ:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/google/googlenav/ui/android/S;->bZ:I

    goto :goto_1
.end method

.method public f()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/S;->bU:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/ui/view/android/P;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/app/Dialog;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public g()Lk/l;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/S;->as()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/android/S;->a:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public h()Lk/l;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/S;->as()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/android/S;->b:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0
.end method
