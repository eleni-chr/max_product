function [product,ind] = max_product(v,n)

% The function takes v, a vector and n, a positive integer, as inputs and
% computes the largest product of n consecutive elements of v. It returns
% the product and the index of the element of v that is the first term of
% the product. If there are multiple such products in v, the function must
% return the one with the smallest starting index. For example, the
% following call >> [product, ind] = max_product([1 2 2 1 3 1],3); will
% assign 6 to product and 3 to ind since the maximum 3-term product in the
% input vector is 2*1*3. If v has fewer than n elements, the function
% returns 0 and -1, respectively.

el=numel(v);
p_old=0;
if el==1
    product=v;
    index=1;
elseif el<n
    product=0;
    index=-1;
else
    for i=1:el-n+1
        incl_el=v(i:i+n-1);
        p_new=prod(incl_el);
        if p_new>p_old
            p_old=p_new;
            index=i;
        end
    end
product=p_old;
end
ind=index;
end
        